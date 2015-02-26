class DevicesController < ApplicationController

	def index
		@devices = Device.all.paginate(page: params[:page], per_page: 2)
	end

	def show
		@device = Device.find(params[:id])
 	end

	def new
		@device = Device.new
	end

	def create
		@device = Device.new(device_params)
		if @device.save       
      		redirect_to devices_path
		else
		  render 'devices/new'
		end
	end


	def edit
		@device = Device.find(params[:id])
  	end
  
	def update    
		@device = Device.find(params[:id])
	    if @device.update_attributes(device_params)
	      flash[:success] = "Device updated"
	      redirect_to devices_path
	    else
	      render 'edit'
	    end
  	end

	private 
	
	def device_params
		params.require(:device).permit(:name, :description)
    end
end
