class FutureLogController < ApplicationController
    def new
        @futurelog = FutureLog.new()
    end

    def create
        @journal = Jour.find(params[:id])
        @futurelog = FutureLog.new(params)
        @futurelog.jour = @journal
        @futurelog.save
    end

    def destroy
    end
    
    private

end
