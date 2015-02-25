class ManagersController < ApplicationController
	def index
		@devicesLocations = DeviceLocation.all
	end
end
