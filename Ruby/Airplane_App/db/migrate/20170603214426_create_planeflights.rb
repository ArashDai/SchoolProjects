class CreatePlaneflights < ActiveRecord::Migration[5.0]
  def change
    create_table :planeflights do |t|
      t.references :plane_id, foreign_key: true
      t.string :airline
      t.integer :number
      t.string :fromcity
      t.string :tocity

      t.timestamps
    end
  end
end
