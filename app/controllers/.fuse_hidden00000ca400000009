class UsersController < ApplicationController
  before_action  :sigden_in_user , only: [:edit, :update, :index]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:destroy]

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end

 	def show
		@user = User.find(params[:id])
 	end

  def new
    @user = User.new
  end

	def create
		@user = User.new(user_params)
		if @user.save
       flash[:success] = "Welcome to the TDS!"
      redirect_to signin_path
		else
		  render 'new'
		end
	end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  def edit
    
  end

  def update    
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

	private 
		def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def sigden_in_user
      store_location
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      flash[:notice] = "You don't have permissions."
      redirect_to(root_url) unless current_user.admin?
    end
end
