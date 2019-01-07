package com.company;

import java.util.*;


public class Main

{

    public static void main(String [] args)
    { // this method takes user inputs using a Scanner and uses them to compute and print out the
      // future investment value

        Scanner input = new Scanner(System.in);

        System.out.print("Enter Investment Amount: ");
            float investmentAmt = input.nextInt(); 

        System.out.print("Enter annual interest rate: ");
            float annualInterestRate = input.nextFloat(); 
            float monthlyInterestRate = (annualInterestRate/100)/12; 

        System.out.print("Enter number of years: ");
            int years = input.nextInt(); 
            int months = years*12;
            double solution = investmentAmt * Math.pow( ( 1+ monthlyInterestRate ) ,months);
            //above we calculate the solution

        System.out.println("Accumulated Value is: "+solution);
        //finally we output the accumulated value float
        System.exit(0);
        //this quits the program
    }
}

