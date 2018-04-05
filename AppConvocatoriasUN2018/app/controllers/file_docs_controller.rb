class FileDocsController < ApplicationController
    
    def show
        @filedocs = filedocs.all 
    end
    
end
