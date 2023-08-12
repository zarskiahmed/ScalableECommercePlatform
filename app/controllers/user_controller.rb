class UserController < ApplicationController
    before_action: authenticate_user! #-> routes to the login/signup if not authenticated
end
