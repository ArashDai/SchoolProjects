require 'test_helper'
# -there are 4 different albums
# -each album was released in 2014
# -there are no albums with 2 stars or 1 stars
class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "there should be 4 albums" do
    counter = Album.count()
    assert_equal( counter, 4, "4 albums not found" )
  end

  test "album not relased in 2014" do
    albums = Album.all()
    albums.each do |album|
      if album.yearreleased != 2014
        assert_equal(album.yearreleased, 2014, 'album not relased in 2014')
      end  
    end  
    #assert_equal(album, 2014, 'album not relased in 2014')
  end

  test "no stars below 3" do
    albums = Album.all()
    albums.each do |album|
      if album.starrating < 3
        assert_equal(album.starrating, 3, 'album rating too low')
      end
    end
   end 
end
