    class Movie extends Item {
        // This class extends the Item Class adding a length attribute
        private int length;

        public Movie(String title,String description,double price,int length){
            // Movie constructor
            super( title, description, price);
            this.length = length;
        }

        public String toString(){
            String str = "This is a Movie:\nTitle: "+super.getTitle()+"\nDescription: "+super.getDescription()+"\nPrice: "+super.getPrice()+"\nlength: "+length;
            return str;
        }

        public void setLength(int newLength){
            this.length = newLength;
        }

        public int getLength(){
            return this.length;
        }
    }