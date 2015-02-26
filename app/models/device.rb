class Device < ActiveRecord::Base
  has_many :device_locations

  validates :name,  presence: true, length: { maximum: 100 }

end
