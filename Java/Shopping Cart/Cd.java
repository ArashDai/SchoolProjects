    class Cd extends Item {
      // This class extends the Item Class adding a trackCount attribute
        private int trackCount;

        public Cd(String title,String description,double price,int trackCount){
            // Cd Constructor
            super( title, description, price);
            this.trackCount = trackCount;
        }

        public String toString(){
            String str = "This is a CD:\nTitle: "+super.getTitle()+"\nDescription: "+super.getDescription()+"\nPrice: "+super.getPrice()+"\nTrack Count: "+trackCount;
            return str;
        }

        public void setTrackCount(int newTrackCount){
            this.trackCount = newTrackCount;
        }
        
        public int getTrackCount(){
            return trackCount;
        }
    }
