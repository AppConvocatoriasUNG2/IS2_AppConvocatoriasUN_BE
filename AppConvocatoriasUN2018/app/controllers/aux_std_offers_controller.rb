class AuxStdOffersController < ApplicationController
    
    def index 
        @auxstdoffers = AuxStdOffer.all 
    end
    
    def show
        @auxstdoffer = AuxStdOffer.find(params[:id])
        @typeoffer = @auxstdoffer.typeoffer
        @addressedto1 = @auxstdoffer.addressedto1
        @nameauxstdoffer = @auxstdoffer.nameauxstdoffer
        @dependency = @auxstdoffer.dependency
        @deadlinedate1 = @auxstdoffer.deadlinedate1
    end
    
end
