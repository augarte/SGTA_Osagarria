class UserSessionController < ApplicationController
	def index

 	end

  	# GET /user_session/new
	def new
		@user = User.new
	end 

	# POST /user_session
	def create
		p "AAAAAAAA" 
		p params[:nan]
		p params[:password]
		
		authorized_user = User.authenticate(params[:nan],params[:password])
		authorized_user = User.authenticate('12345678A','pass')

		if authorized_user
		    flash[:notice] = "Wow Welcome again"
		    session[:user_nan] = @authorized_user.nan
		    session[:user_izena] = @authorized_user.izena
		    redirect_to(:action => 'home')
		else
		    flash[:alert] = "Invalid Username or Password"
	    	render "index"	
		end
	end

	# DELETE /user_session/:id
	def destroy
		logout
		redirect_to(:users, message: "Logged out")
	end
end
