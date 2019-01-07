
public class Kite extends GeometricObject {
  //default values
  private double side1 = 1.0;
  private double side2 = 1.0;
  private double diagonal1 = 1.0;
  private double diagonal2 = 1.0;


  public Kite() { 

  }

  public Kite(double s1, double s2, double d1, double d2) { 
    this.side1 = s1;
    this.side2 = s2;
    this.diagonal1 = d1;
    this.diagonal2 = d2; 
  } 
  
  //setters
  public void setDiagonal1(double d){
    this.diagonal1 = d;
  }  

  public void setDiagonal2(double d){
    this.diagonal2 = d;
  }  

  public void setSide1(double s){
    this.side1 = s;
  }

  public void setSide2(double s){
    this.side2 = s;
  }    

  //getters
  public double getDiagonal1(){
    return this.diagonal1;
  }  

  public double getDiagonal2(){
    return this.diagonal2;
  }  

  public double getSide1(){
    return this.side1;
  }

  public double getSide2(){
    return this.side2;
  }  

  //get area
  // Area of the kite = .5 * (D1 * D2)
  public double getArea(){
    System.out.print(.5*(this.diagonal1 * this.diagonal2));
    return (.5*(this.diagonal1 * this.diagonal2));
  }


  //get perimeter
  // Perimeter of a kite = 2(a+b), where a and b are the sides of the kite.
  public double getPerimeter(){
    System.out.print(2 * (this.side1 + this.side2));
    return (2 * (this.side1 + this.side2));
  }


  //toString
  public String toString(){
    return "This is a kite created on " + super.getDateCreated() + "\ncolor: " + super.getColor() +  " and filled: " + super.isFilled() + "\nIts sides are of lengths: "+this.side1 +","+this.side2+"\nIts diagonals are of lengths: "+this.diagonal1+","+this.diagonal2+"\nand it contains the methods getArea() and getPerimeter()";
  }


}
