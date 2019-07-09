class TravelersController < ApplicationController
    def new 
        @traveler = Traveler.new
    end 

    def create
        Traveler.create(traveler_params)
        session[:traveler_id] = @traveler.id
        redirect_to traveler_path(@traveler)
    end

    def show 
        @traveler = Traveler.find(params[:id])
        if session[:traveler_id] != @traveler.id 
            redirect_to :root
        else 
        end
    end
     
    private
    
    def traveler_params
        params.require(:traveler).permit(:name, :uid, :username, :password, :password_confirmation)
    end

end
