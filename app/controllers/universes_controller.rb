class UniversesController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:index, :show]

    def index
        @universes = Universe.all
    end
    
    def show
        @universe = Universe.find(params[:id])
    end
    
    def new
        @universe = Universe.new
    end
    
    def edit
        @universe = Universe.find(params[:id])
    end
    
    def create
        @universe = Universe.new(universe_params)
        if @universe.save
            redirect_to @universe
        else
            render :new
        end
    end
    
    def update
        @universe = Universe.find(params[:id])
        if @universe.update(universe_params)
            redirect_to @universe
        else
            render :edit
        end
    end
    
    def destroy
        @universe = Universe.find(params[:id])
        @universe.destroy
        redirect_to universes_url
    end
    
    private
    
    def universe_params
        params.require(:universe).permit(
        :name, :description
        )
    end
end
