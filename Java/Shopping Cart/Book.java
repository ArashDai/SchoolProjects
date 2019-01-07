    class Book extends Item {
      // This class extends the Item Class adding a pageCount attribute
        private int pageCount;

        Book(String title,String description,double price,int pageCount){
            // Book constructor
            super( title, description, price);
            this.pageCount = pageCount;
        }

        public String toString(){
            String str = "This is a Book:\nTitle: "+super.getTitle()+"\nDescription: "+super.getDescription()+"\nPrice: "+super.getPrice()+"\nPage Count: "+pageCount;
            return str;
        }

        public int getPageCount(){
            return pageCount;
        }
        
        public void setPageCount( int newPageCount){
            this.pageCount = newPageCount;
        }
    }