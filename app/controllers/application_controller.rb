class ApplicationController < ActionController::Base
    def authorize_admin!
        unless current_user.role_id == 1
            flash[:alert]= "You must be an Admin to access this section"
            redirect_to root_path
            
        end
    end
end
