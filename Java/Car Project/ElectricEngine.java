
class ElectricEngine implements Engine {
  private String type = "Electric";
  private boolean isEngineOn = false;
  private int horsepower;

  public ElectricEngine(int hp){
    //constructor sets horsepower
    this.horsepower = hp;
  }

  public String toString(){
    return "This is an Electric Engine, it has "+this.horsepower+" horsepower";
  }

  public boolean equals(ElectricEngine x){
    //check if equal
    if(x.getType().equals(this.type) && x.getHorsePower() == this.horsepower ){
      return true;
    } else {
      return false;
    }
  }

  public String getType(){
    return this.type;
  }

  @Override
  public void turnOn(){
    this.isEngineOn = true;
  }

  @Override
  public void turnOff(){
    this.isEngineOn = false;
  }

  @Override
  public int getHorsePower(){
    return this.horsepower;
  }
}
