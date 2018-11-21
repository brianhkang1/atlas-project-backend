class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :creator_id
      t.text :location
      t.text :summary

      t.timestamps
    end
  end
end
