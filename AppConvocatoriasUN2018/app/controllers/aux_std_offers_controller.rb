class AuxStdOffersController < ApplicationController
    
    def index 
        @auxstdoffers = AuxStdOffer.all 
    end
    
end
