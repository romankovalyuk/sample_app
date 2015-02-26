class CreateDeviceLocations < ActiveRecord::Migration
  def change
    create_table :device_locations do |t|
      t.integer :device_id
      t.integer :user_id
      t.string :room
      t.timestamps
    end
     add_index :device_locations, [:user_id, :device_id, :created_at]
  end
end
