    class Customer {
        // This class represents a Customer
        private double id;
        private String firstName;
        private String lastName;
        private ShoppingCart cart;

        public Customer(String firstName, String lastName){
            // Customer constructor
            this.firstName = firstName;
            this.lastName = lastName;
            this.cart = new ShoppingCart(10);
        }

        public String toString(){
          String str = "\nThis is a Customer:\nName: "+firstName+" "+lastName+"\nTheir cart contains: "+ this.cart.toString();
          System.out.print(str);
          return str;
        }

        public void addItem(Item item){
            this.cart.addItem(item);
        }



    }