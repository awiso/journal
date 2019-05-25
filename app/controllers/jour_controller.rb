class JourController < ApplicationController
    def index
        @journals = Jour.all
    end

    def show
        @journal = Jour.find(params[:id])
    end
    
    def new
        @journal = Jour.new
    end

    def create
        @journal = Jour.new(journal_params)
        if @journal.save 
            redirect_to jour_path(@journal)
        else
            render :new
        end
    end

    def destroy 
        @journal = Jour.find(params[:id])
        @journal.destroy
        redirect_to jour_index_path
    end

    private

    def journal_params
        params.require(:jour).permit(:title)
    end
end