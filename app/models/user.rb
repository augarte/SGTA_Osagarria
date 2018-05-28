class User < ApplicationRecord
    has_many :accounts
    
    def self.authenticate(email="", login_password="")  	 
        user = User.find_by(emaila: email)
	if user && user.match_password(login_password)
	    return user
 	else
	    return false
	end
    end   
end
