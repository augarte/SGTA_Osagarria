class User < ApplicationRecord
    has_many :accounts
    
    def self.authenticate(nan, password)  	 
        user = User.find_by_nan(nan)
        p user
		if user.pasahitza = password
	    	return user
	 	else
		    return false
		end
    end   
end
