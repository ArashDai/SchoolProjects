class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.references :artist_id, foreign_key: true
      t.string :title
      t.integer :starrating
      t.integer :yearreleased

      t.timestamps
    end
  end
end
