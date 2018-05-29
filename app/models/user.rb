class User < ApplicationRecord
    has_many :accounts

    def self.authenticate(nan, password)  
    	@user = User.where(:nan => nan).first
    	if @user
			if @user.pasahitza == password
		    	return @user
		 	else
			    return false
			end
		else
			return false
		end
    end   
end
