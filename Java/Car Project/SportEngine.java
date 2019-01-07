
class SportEngine implements Engine {
  private String type = "Sport";
  private boolean isEngineOn = false;
  private int horsepower;

  public SportEngine(int hp){
    //constructor sets horsepower
    this.horsepower = hp;
  }

  public String toString(){
    return "This is a Sport Engine, it has "+this.horsepower+" horsepower";
  }

  public boolean equals(SportEngine x){
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
