
public class Car {
  private String make;
  private String model;
  private int speed;
  private int year;
  private Engine engine;

  public Car(){
    // default no argument constructor
    // empty because values will be set with setters 
  }

  public Car(String make, String model, int year){
    // constructor with arguments
    this.make = make;
    this.model = model;
    this.year = year;
    this.speed = 0;
  }

  //setters

  public void setMake(String make){
    this.make = make;
  }

  public void setModel(String model){
    this.model = model;
  }

  public void setYear(int year){
    this.year = year;
  }

  //getters

  public String getMake(){
    return this.make;
  }

  public String getModel(){
    return this.model;
  }

  public int getYear(){
    return this.year;
  }

  public int getSpeed(){
    return this.speed;
  }



  public void drive(int speed){
    //sets speed
    this.speed = speed;
  }

  public void stop(){
    //stops car speed set zero
    this.speed = 0;
  }

  public boolean isStopped(){
    //check speed to see if car is stopped
    if(this.speed == 0){
        return true;
    } else {
        return false;
      }
  }

  public void setEngine(Engine engine){
    //setter for engine
    this.engine = engine;
  }

  public Engine getEngine(){
    //getter for engine
    return this.engine;
  }

  public void turnOnEngine(){
    //turn on the engine for this car
    this.engine.turnOn();
  }

  public void turnOffEngine(){
    //turn off the engine for this car
    this.engine.turnOff();
  }

  public String toString(){
    return "This is a standard car object\nMake: \n"+this.make+"\nModel: \n"+this.model+"\nYear: \n"+this.year;
  }

}
