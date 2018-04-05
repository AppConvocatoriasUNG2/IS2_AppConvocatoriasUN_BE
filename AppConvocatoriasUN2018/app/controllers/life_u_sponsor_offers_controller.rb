class LifeUSponsorOffersController < ApplicationController
    
    def index 
        @lifeusponsorsoffers = LifeUSponsorOffer.all 
    end
    
end
