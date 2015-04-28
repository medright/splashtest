class UsersController < ApplicationController
	before_action :require_signin, except: [:new, :create]
	before_action :require_correct_user, only: [:edit, :update, :destroy]
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to @user, notice: "Thanks for signing up!"
		else
			render :new
	  end
  end

	def new
		@user = User.new
	end

	def edit
		
	end

	def update
		if @user.update(user_params)
			redirect_to @user, notice: "Account successfully updated!"
		else
			render :edit
		end
	end

	def destroy
		@user.destroy
		session[:user_id] = nil
		redirect_to root_url, alert: "Account successfully deleted!"
	end


	private

	def require_correct_user
		@user = User.find(params[:id])
		unless current_user == @user
			redirect_to root_url
		end 
	end

	def user_params
		params.require(:user).permit(:email, :kind, :password, :password_confirmation, :pin)	
	end
end
