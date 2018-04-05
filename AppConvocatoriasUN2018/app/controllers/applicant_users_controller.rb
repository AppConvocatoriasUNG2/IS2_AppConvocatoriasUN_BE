class ApplicantUsersController < ApplicationController
    
    def login
       @applicant_user = ApplicantUser.emailapplicant
       @applicant_user = ApplicantUser.encryptedPassword
    end
    
    def register
       @applicant_user = ApplicantUser.cc
       @applicant_user = ApplicantUser.emailapplicant
       @applicant_user = ApplicantUser.fullnameapplicant
       @applicant_user = ApplicantUser.encryptedPassword
    end
    
end
