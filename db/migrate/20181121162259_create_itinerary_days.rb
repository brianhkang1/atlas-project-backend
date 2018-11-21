class CreateItineraryDays < ActiveRecord::Migration[5.2]
  def change
    create_table :itinerary_days do |t|
      t.integer :trip_id
      t.integer :day
      t.text :description

      t.timestamps
    end
  end
end
