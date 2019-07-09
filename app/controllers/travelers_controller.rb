class TravelersController < ApplicationController
    def new 
        @traveler = Traveler.new
    end 

    def create
        Traveler.create(traveler_params)
    end

    def show 
    end
     
    private
    
    def traveler_params
        params.require(:traveler).permit(:name, :uid, :username, :password, :password_confirmation)
    end

end
