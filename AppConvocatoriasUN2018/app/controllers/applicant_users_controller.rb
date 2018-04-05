class ApplicantUsersController < ApplicationController
    
    def index
        @applicant_users = ApplicantUser.all
        render json: @applicant_users 
    end
      # POST /users
    def create
        @applicant_user = User.new(user_params)
        if @applicant_user.save
          render json: @applicant_user, status: :created, location: @applicant_user 
        else
          render json: @applicant_user.errors, status: :unprocessable_entity 
        end
    end
      
    def user_params
      params.require(:register).permit(:email, :password, :password_confirmation)
    end
    
end
