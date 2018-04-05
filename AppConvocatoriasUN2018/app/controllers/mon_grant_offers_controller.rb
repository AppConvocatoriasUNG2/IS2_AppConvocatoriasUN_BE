class MonGrantOffersController < ApplicationController
    
    def index 
        @mongrantoffers = MonGrantOffer.all 
    end
    
end
