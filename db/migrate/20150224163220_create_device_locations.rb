class CreateDeviceLocations < ActiveRecord::Migration
  def change
    create_table :device_locations do |t|
      t.string :deviceId
      t.string :integer
      t.string :UserId
      t.string :integer
      t.string :roomName
      t.string :string

      t.timestamps
    end
  end
end
