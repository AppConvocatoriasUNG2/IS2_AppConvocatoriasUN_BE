class LifeUSponsorOffersController < ApplicationController
    
    def index 
        @lifeusponsorsoffers = LifeUSponsorOffer.all 
    end
    
    def show
        @lifeusponsorsoffer = LifeUSponsorOffer.find(params[:id])
        @addressedto2 = @lifeusponsorsoffer.addressedto2
        @namelusoffer = @lifeusponsorsoffer.namelusoffer
        @deadlinedate2 = @lifeusponsorsoffer.deadlinedate2
        @modalitylus = @lifeusponsorsoffer.modalitylus
        @selectreq3 = @lifeusponsorsoffer.selectreq3
    end
    
end
