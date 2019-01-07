
class DieselEngine implements Engine {
  private String type = "Diesel";
  private boolean isEngineOn = false;
  private int horsepower;

  public DieselEngine(int hp){
    //constructor sets horsepower
    this.horsepower = hp;
  }

  public String toString(){
    return "This is a Diesel Engine, it has "+this.horsepower+" horsepower";
  }

  public boolean equals(DieselEngine x){
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
