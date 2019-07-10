class TravelersController < ApplicationController
    def new 
        @traveler = Traveler.new
    end 

    def create
        @traveler = Traveler.new(traveler_params)
        if @traveler.valid? 
            @traveler.save
            session[:traveler_id] = @traveler.id
            redirect_to traveler_path(@traveler)
        else
            render :new
        end
    end

    def show 
        @traveler = Traveler.find(params[:id])
        if session[:traveler_id] != @traveler.id 
            redirect_to :root
        else 
        end
    end

    def edit
        @traveler = Traveler.find(params[:id])
    end

    def update
        @traveler = Traveler.find(params[:id])
        if @traveler.update(traveler_params)
            redirect_to @traveler
        else
            render :edit
        end
    end
    
    def destroy
        @traveler = Traveler.find(params[:id])
        @traveler.destroy
        session.delete :traveler_id
        redirect_to :root
    end
     
    private
    
    def traveler_params
        params.require(:traveler).permit(:name, :uid, :username, :password, :password_confirmation)
    end
end
