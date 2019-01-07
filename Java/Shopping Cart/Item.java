public class Item {
    // This class represents a generic Item
    private String title;
    private String description;
    private double price;

    public Item(String title,String description,double price){
        // Item constructor
        this.title = title;
        this.description = description;
        this.price = price;
    }

    public String toString(){
        String str = "This is an Item:\nTitle: "+title+"\nDescription: "+description+"\nPrice is: "+price;
        return str;
    }

    public String getTitle(){

        return this.title;
    }

    public String getDescription(){

        return this.description;
    }

    public double getPrice(){

        return this.price;
    }

    public void setTitle(String newTitle){

        this.title = newTitle;
    }

    public void setDescription(String newDescription){

        this.description = newDescription;
    }
    
    public void setPrice(double newPrice){

        this.price = newPrice;
    }
}