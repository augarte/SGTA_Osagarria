class User < ApplicationRecord
    has_many :accounts
    
    def self.authenticate(nan, password)  	 
        user = User.find_by(nan: nan)
        p "BBBBBBBBBB"
        p nan
        p password
		if user && user.match_password(password)
	    	return user
	 	else
		    return false
		end
    end   
end
