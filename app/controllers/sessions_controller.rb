class SessionsController < ApplicationController
	def new
		
	end

	def create
		if user = User.authenticate(params[:email], params[:password], params[:pin])
			session[:user_id] = user.id
			flash[:notice] = "Welcome back, #{user.email}!"
			redirect_to user
		else
			flash.now[:alert] = "Invalid login"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Now you're signed out!"
	end
end
