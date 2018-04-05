class FileDocsController < ApplicationController
    
    def show
        @filedocs = file_docs.all 
    end
    
end
