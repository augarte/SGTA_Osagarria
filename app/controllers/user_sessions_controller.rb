class UserSessionsController < ApplicationController
    def new
	@user = User.new
    end 
    def create
	authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
	if authorized_user
	    flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
	    redirect_to(:action => 'home')
	else
	    flash[:notice] = "Invalid Username or Password"
	    flash[:color]= "invalid"
	    render "login"	
	end
    end
    def destroy
	logout
	redirect_to(:users, message: "Logged out")
    end
end
