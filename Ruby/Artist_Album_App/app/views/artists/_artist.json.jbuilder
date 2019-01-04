json.extract! artist, :id, :firstname, :lastname, :gender, :created_at, :updated_at
json.url artist_url(artist, format: :json)
