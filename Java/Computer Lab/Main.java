
package com.company;

import java.util.Scanner;
import java.util.Arrays;




public class Main {

    public static void main(String[] args) {

        boolean running = true;

        int[][][] labs = new int[4][6][3];
        // I set up the arrays for the labs and computer stations
        labs[0] = new int[5][3];
        labs[1] = new int[6][3];
        labs[2] = new int[4][3];
        labs[3] = new int[3][3];
        Scanner input = new Scanner(System.in);

        while(running) {

            //make the table to show which computers are occupied by which users
            System.out.println("LAB STATUS\n" +
                    "Lab # Computer Stations\n" +
                    "1 1: "+ (labs[0][0][0] == 0 ? "empty" : labs[0][0][0]+"" ) +
                        " 2: "+ (labs[0][1][0] == 0 ? "empty" : labs[0][1][0]+"" ) +
                        " 3: "+ (labs[0][2][0] == 0 ? "empty" : labs[0][2][0]+"" ) +
                        " 4: "+ (labs[0][3][0] == 0 ? "empty" : labs[0][3][0]+"" ) +
                        " 5: "+ (labs[0][4][0] == 0 ? "empty" : labs[0][4][0]+"" ) +"\n" +
                    "2 1: "+ (labs[1][0][0] == 0 ? "empty" : labs[1][0][0]+"" ) +
                        " 2: "+ (labs[1][1][0] == 0 ? "empty" : labs[1][1][0]+"" ) +
                        " 3: "+ (labs[1][2][0] == 0 ? "empty" : labs[1][2][0]+"" ) +
                        " 4: "+ (labs[1][3][0] == 0 ? "empty" : labs[1][3][0]+"" ) +
                        " 5: "+ (labs[1][4][0] == 0 ? "empty" : labs[1][4][0]+"" ) +
                        " 6: "+ (labs[1][5][0] == 0 ? "empty" : labs[1][5][0]+"" ) +"\n" +
                    "3 1: "+(labs[2][0][0] == 0 ? "empty" : labs[2][0][0]+"" ) +
                        " 2: "+(labs[2][1][0] == 0 ? "empty" : labs[2][1][0]+"" ) +
                        " 3: "+(labs[2][2][0] == 0 ? "empty" : labs[2][2][0]+"" ) +
                        " 4: "+(labs[2][3][0] == 0 ? "empty" : labs[2][3][0]+"" ) +"\n" +
                    "4 1: "+(labs[3][0][0] == 0 ? "empty" : labs[3][0][0]+"" ) +
                        " 2: "+(labs[3][1][0] == 0 ? "empty" : labs[3][1][0]+"" ) +
                        " 3: "+(labs[3][2][0] == 0 ? "empty" : labs[3][2][0]+"" ) +"\n" +
                    "MAIN MENU\n" +
                    "0) Quit\n" +
                    "1) Simulate login\n" +
                    "2) Simulate logoff\n" +
                    "3) Search");

            int userInput = input.nextInt();

            switch (userInput) {
                case 0: //quit
                    running = false;
                    System.exit(0); //quits the program
                    break;
                case 1: // login
                    labs = login(labs);
                    break;
                case 2: //logout
                    labs = logout(labs);
                    break;
                case 3: //search
                    System.out.println("Please enter a userId to search for");
                    int userId = input.nextInt();
                    search(labs,userId);
                    break;
                default:
                    break;
            }
            //needs to maintain a loop so multiple people can login and out
        }
    }

    public static int[][][] login(int [][][] labs) {
        //this function takes labs array as an input and prompts the user for a user id as well as a location to log in
        // it then updates the lab array and returns it
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the 5 digit ID number of the user logging in:");
        int userId = input.nextInt();

        System.out.println("Enter the lab number the user is logging in from (1-4):");
        int labNum = input.nextInt()-1;
        //subtract by 1 to make it match array index
        //based on lab num retrieve length of lab to use below
        System.out.println("Enter computer station number the user is logging in to (1-"+labs[labNum].length+"):");
        int compStation = input.nextInt()-1;

        labs[labNum][compStation] = new int[] { userId, labNum, compStation};

        return labs;

    }

    public static int[][][] logout(int[][][] labs) {
        Scanner input = new Scanner(System.in);
        System.out.println("Please enter userId you want to logout:");
        int userId = input.nextInt();

        int [] location = search(labs, userId);
            //use the search function as a helper to find the location of the user

        if(location[0] == 99 && location[1] == 99 && location[2] == 99){
            //the user was not logged in, no need to log them out
            return labs;
        } else {
            labs[location[0]][location[1]] = new int [] {0,0,0};
            // clear the user data effectively logging out
        }
        return labs;
    }

    public static int[] search(int[][][] labs, int userId) {
        //this function takes labs and the userId and searches for the user in the labs
        //it returns a location array to be used by the logout function

        int [] location = {99,99,99}; // I use this unique combination to determine if the user was not logged in later in the logout function
        boolean foundUser = false;

        for( int i = 0; i < labs.length; i++ ){
            for (int j = 0; j < labs[i].length && !foundUser; j++){
                if(labs[i][j][0] == userId){
                    location[0] = i;
                    location[1] = j;
                    location[2] = 0;
                    System.out.println("user: "+userId+" is located in computer lab: "+(i+1)+" at station: "+(j+1)+".");
                    foundUser = true;
                } else {
                    System.out.println("None");
                }
            }
        }
        return location;
    }

}
