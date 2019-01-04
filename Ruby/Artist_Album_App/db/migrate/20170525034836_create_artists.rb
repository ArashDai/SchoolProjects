class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender

      t.timestamps
    end
  end
end
