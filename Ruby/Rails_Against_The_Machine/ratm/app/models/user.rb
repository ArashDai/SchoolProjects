class User < ActiveRecord::Base

    has_secure_password

    validates_length_of :email, :maximum => 50
    validates_length_of :address, :maximum => 100

end
