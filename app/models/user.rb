class User < ApplicationRecord
    def self.authenticate(email="", login_password="")  	 
        user = User.find_by(emaila: email)
	if user && user.match_password(login_password)
	    return user
 	else
	    return false
	end
    end   
end
