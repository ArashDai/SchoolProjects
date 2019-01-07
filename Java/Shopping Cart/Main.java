class Main {
  public static void main(String[] args) {
        // Usage tests below
        Book x = new Book("x","b",3,123);
        Book y = new Book("y","b",3,123);
        Movie z = new Movie("z","b",3,123);
        Cd c = new Cd("c","b",3,123);
        Book i = new Book("a","b",3,123);

        ShoppingCart s = new ShoppingCart(10);

        Customer alex = new Customer("alex","m");
        i.setTitle("ooh yea");

        alex.addItem(i);
        alex.addItem(x);
        alex.addItem(y);
        alex.addItem(z);
        alex.addItem(c);
        // write your code here

        alex.toString();
  }
}