class CreateTripLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_likes do |t|
      t.integer :trip_liker_id
      t.integer :liked_trip_id

      t.timestamps
    end
  end
end
