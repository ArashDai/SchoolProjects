package com.company;

import java.util.Random;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        // main method uses helper functions to play rock paper scissors
        // a boolean playAgain is set to true
        // while playAgain is true it will prompt a user for a choice,
        // generate a choice for computer
        // determine the winner of the game
        // and finally ask if the user would like to play again
        boolean playAgain = true;

        while(playAgain) {
            char human = userChoice();
            char computer = computerChoice();

            determineWinner(human, computer);
            playAgain = tryAgain();
        }

    }


    public static char userChoice() {
        // This function takes no inputs and it starts the game
        // userChoice prompts the user for a selection and then
        boolean validChoice = false;
        Scanner input = new Scanner(System.in);
        while (!validChoice) {
            System.out.println("Welcome to Rock Paper Scissors \n Please enter your selection: Rock, Paper, or Scissors ");
            String userSelection = input.nextLine().toLowerCase();
            char selection = userSelection.charAt(0);
            System.out.println(selection);

            if (selection == 'r' || selection == 'p' ||selection == 's' || selection == 'q') {
                validChoice = true;  // I dont understand why my Intellij says this value is never used, I use it to break the loop
                return selection;
            } else {
                System.out.println("Please enter Rock, Paper, Scissors or q to quit");
                validChoice = false;
            }
        }

        return '!';//this should never be returned
    }

    public static char computerChoice(){
        // this function takes no inputs and creates a random choice for the computer
        // using a random number assigned to certain values
        Random random = new Random();
        int x = random.nextInt(3);
        char computerSelection;

        if (x == 1) {
                computerSelection = 'r';
        } else if (x == 2) {
                computerSelection = 'p';
        } else {
                computerSelection = 's';
        }
        return computerSelection;
    }

    public static void determineWinner(char human,  char computer){
        //This function takes a character human and a character computer  to represent their selection
        //This prints the winner based on the inputs
        if (human == 'r') {
            if (computer == 'r') {
                System.out.println("Its a Draw!");
            } else if( computer == 'p') {
                System.out.println("Paper beats Rock, Computer Player wins!");
            } else { //computer is scissors
                System.out.println("Rock beats Scissors, Human Player wins!");
            }
        } else if (human == 'p') {
            if ( computer == 'r'){
                System.out.println("Paper beats Rock, Human Player wins!");
            } else if ( computer == 'p'){
                System.out.println("Its a Draw!");
            } else { // computer is scissors
                System.out.println("Scissors cut paper, Computer Player wins!");
            }
        } else { // human is scissors
            if ( computer == 'r'){
                System.out.println("Rock smashes scissors, Computer Player wins!");
            } else if ( computer == 'p'){
                System.out.println("Scissors cut paper, Human Player wins!");
            } else { // computer is scissors
                System.out.println("Its a Draw!");
            }
        }
    }


    public static boolean tryAgain(){
        // this function takes no inputs and repeatedly asks the user if they want to play again
        // until they answer with a yes or no, it returns a boolean true to play again, false to stop
        Scanner input = new Scanner(System.in);
        while(true) {
            System.out.println("Would you like to play again? yes/no ");
            char response = input.nextLine().toLowerCase().charAt(0);
            if (response == 'y') {
                return true;
            } else if (response == 'n') {
                return false;
            } else {
                System.out.println("Sorry please enter either yes or no ");
            }
        }
    }

}
