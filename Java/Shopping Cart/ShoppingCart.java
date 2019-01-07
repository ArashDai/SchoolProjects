import java.util.ArrayList;

class ShoppingCart {
        // This class represents a shopping cart
        private ArrayList<Item> cart;

        public ShoppingCart(int num){
            // ShoppingCart constructor
            this.cart = new ArrayList<Item>(num);
        }

        public ArrayList addItem(Item newItem){
            this.cart.add(newItem);
            return this.cart;
        }

        public String toString(){
            String str = "";
            for(Item item: this.cart){
              str += "\n"+item;
            }
            return str;
        }
}

