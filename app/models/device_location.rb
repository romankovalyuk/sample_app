class DeviceLocation < ActiveRecord::Base
	belongs_to :user
	belongs_to :device

	 validates :roomName, length: { maximum: 1 }
end
