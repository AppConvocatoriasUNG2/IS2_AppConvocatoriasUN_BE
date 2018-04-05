class SocEcSupportOffersController < ApplicationController
    
    def index 
        @asocecsupportoffers = SocEcSupportOffer.all 
    end
    
end
