class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :trip_id
      t.string :image_url
      t.text :caption
      
      t.timestamps
    end
  end
end
