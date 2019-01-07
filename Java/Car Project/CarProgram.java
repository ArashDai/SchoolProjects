
import java.util.Scanner;


class CarProgram{
  public static void main() {
    System.out.print("Car Program Running \n");
    boolean running = true;
    //create a scanner
    Scanner input = new Scanner(System.in);
    //create a car
    Car myCar = new Car();
    char choice;
    //prompt user for inputs
    System.out.print("Please enter the make of this car: \n"); 
    myCar.setMake( input.nextLine() );
      
    System.out.print("Please enter the model of this car: \n"); 
    myCar.setModel( input.nextLine() );
      
    System.out.print("Please enter the year of this car: \n"); 
    myCar.setYear( input.nextInt() ); 

    //set a default engine until user selects another
    myCar.setEngine(new DieselEngine(10));

    while(running){
      //repeatedly ask the user to enter an option:d = drive, e = select engine, q to quit
      //Use the scanner method .next().charAt(0)to get the char from the input.
      System.out.print("Please enter an option: d = drive, e = select engine, q to quit \n");
      char userChoice = input.next().charAt(0);

      switch (userChoice) {
        case 'q':
          System.out.print("Shutting down... \nTurning off engine \nGoodbye");
          myCar.turnOffEngine(); //turn off the engine
          running = false; //breaks the loop
          System.exit(0); //quits the program
          break;
        case 'd':
          System.out.print("Please enter the speed you wish to drive: \n"); 
          // Read the speed from the input
          // turn on the engine 
          myCar.turnOnEngine();
          // set the speed to the entered speed.
          myCar.drive( input.nextInt() );
          // Print out that the engine was turned on and print the speed.
          System.out.print("You are now driving at"+myCar.getSpeed()+" \n");
          break;
        case 'e':
          //the program should ask the user to select an engine (1 = SportEngine, 2 = DieselEngine, 3 = ElectricEngine).
          System.out.print("select an engine (1 = SportEngine, 2 = DieselEngine, 3 = ElectricEngine) \n");
          int engineChoice = input.nextInt();
          // ask for the horsepower and create an instance of the selected engine type and horsepower 
          System.out.print("what is the horsepower for this engine? \n");
          int hp = input.nextInt();
          switch (engineChoice) {
            case 1:
              myCar.setEngine(new SportEngine(hp));
              System.out.print("Now using engine: SportEngine \n");
              break;
            case 2:
              myCar.setEngine(new DieselEngine(hp));
              System.out.print("Now using engine: DieselEngine \n");
              break;
            case 3:
              myCar.setEngine(new ElectricEngine(hp));
              System.out.print("Now using engine: ElectricEngine \n");
              break;
            default:
              break;
          }
          // set the engine to the Car object. Print out the message: “Now using engine: “ + engine. If any other number was entered, prompt the user again.
          break;
      }
    }
  }
}
