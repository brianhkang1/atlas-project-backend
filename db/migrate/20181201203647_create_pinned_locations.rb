class CreatePinnedLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :pinned_locations do |t|
      t.integer :user_id
      t.string :country
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
