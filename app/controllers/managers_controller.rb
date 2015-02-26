class ManagersController < ApplicationController
	def index
		@devicesLocations = DeviceLocation.all
	end

	def new
		@devicesLocation = DeviceLocation.new
	end

	def create
		@devicesLocation = Device.new(device_params)
		if @devicesLocation.save       
      		redirect_to managers_path
		else
		  render 'devices/new'
		end
	end

	def update
		if @devicesLocation.update_attributes(user_params)
	      flash[:success] = "Profile updated"
	      redirect_to managers_path
    	else
      		render 'edit'
    	end
	end

end
