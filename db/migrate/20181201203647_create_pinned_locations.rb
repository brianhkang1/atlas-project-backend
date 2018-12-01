class CreatePinnedLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :pinned_locations do |t|
      t.integer :user_id
      t.string :country
      t.decimal :longitude, :precision => 8, :scale => 4
      t.decimal :latitude, :precision => 8, :scale => 4

      t.timestamps
    end
  end
end
