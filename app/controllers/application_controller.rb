class ApplicationController < ActionController::Base
    # Verify CSRF (Cross-Site Reference Forgery) Token Authenticity before Authenticating 
    protect_from_forgery prepend: true #-> always do this before authentication
    
    # Authenticate <------> before_action :authenticate_deviseModelName!                     
    before_action :authenticate_user!  #-> routes to login/signup if not authenticated

    def index
        # User Signed In?
        user_signed_in?

        current_user

        user_session
    end
end
