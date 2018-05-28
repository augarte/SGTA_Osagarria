class UserSessionController < ApplicationController
	def index

 	end

  	# GET /user_session/new
	def new
		@user = User.new
	end 

	# POST /user_session
	def create
		#authorized_user = User.authenticate(params[:nan],params[:password])
		authorized_user = User.authenticate('12345678A','pass')
		if authorized_user
		    flash[:notice] = "Wow Welcome again"
		    redirect_to(:action => 'home')
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
