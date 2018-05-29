class UserSessionController < ApplicationController
	def index

 	end

  	# GET /user_session/new
	def new
		@user = User.new
	end 

	# POST /user_session
	def create
		nan = params[:user][:nan]
		pass = params[:user][:password]
		@user = User.authenticate(nan, pass)
		if @user
		    flash[:notice] = "Wow Welcome again"
		    session[:user_nan] = @user.nan
		    session[:user_izena] = @user.izena
		    redirect_to(:controller => 'user', :action => 'kontua')
		else
		    flash[:alert] = "Invalid Username or Password"
	    	render "index"	
		end
	end

	# DELETE /user_session/:id
	def destroy
		session.clear
		redirect_to(:root, message: "Logged out")
	end
end
