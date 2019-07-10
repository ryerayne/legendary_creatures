class TravelersController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]

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
        set_traveler
        if session[:traveler_id] != @traveler.id 
            redirect_to :root
        else 
        end
    end

    def edit
        set_traveler
    end

    def update
        set_traveler
        if @traveler.update(traveler_params)
            redirect_to @traveler
        else
            render :edit
        end
    end
    
    def destroy
        set_traveler
        @traveler.destroy
        session.delete :traveler_id
        redirect_to :root
    end
     
    private
    
    def traveler_params
        params.require(:traveler).permit(:name, :uid, :username, :password, :password_confirmation)
    end

    def set_traveler
        @traveler = Traveler.find(params[:id])
    end
end
