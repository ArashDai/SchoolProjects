require 'test_helper'
# - there are 4 different artists
# - each artist has an album associated with it
# - one of the artists is named "Barry Manilow"
class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "there should be 4 artists" do
    counter = Artist.count()
    assert_equal( counter, 4, "not 4 records found" )
  end

  test "each artist has an album" do
    count = Artist.count()
    albums = Album.count()
 
    assert_equal(albums, count, 'artist album not found')
  end

  test "barry manilow is found" do
    artists = Artist.all()
    artists.each do |artist|
      if artist.firstname == 'Barry' && artist.lastname == 'Manilow'
      assert_equal( "Manilow", artist.lastname, "last name is not right" )
      assert_equal( "Barry", artist.firstname, "first name is not right" )
    end
  end
end
end