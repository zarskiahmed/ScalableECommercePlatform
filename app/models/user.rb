class User < ApplicationRecord
  # Configuring Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #-> For password encryption and authentication
         :registerable, #-> For user registration
         :confirmable, #-> For verifying if an account is already confirmed to sign in
         :recoverable, #-> For password reset
         :rememberable, #-> For "Remember me" functionality
         :validatables #-> For email and password validations
end
