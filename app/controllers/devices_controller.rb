class DevicesController < ApplicationController

	def index
		@devices = Device.all
	end

	def create
		@device = Device.new(device_params)
		if @device.save       
      		redirect_to @device
		else
		  render 'device/new'
		end
	end

	private 
		def device_params
      params.require(:device).permit(:name, :description)
    end
end
