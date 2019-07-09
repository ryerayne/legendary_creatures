class TravelersController < ApplicationController
    def create
        Traveler.create(traveler_params)
    end
     
    private
    
    def traveler_params
    params.require(:traveler).permit(:name, :uid, :username, :password, :password_confirmation)
    end

end
