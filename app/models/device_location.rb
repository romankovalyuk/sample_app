class DeviceLocation < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	belongs_to :device, dependent: :destroy

	validates :user_id, presence: true
	validates :device_id, presence: true
	validates :room, presence: true	


end
