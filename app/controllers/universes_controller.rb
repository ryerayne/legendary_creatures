class UniversesController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:index, :show]

    def most_creatures
        @universe = Universe.most_creatures.first
        render :show
    end

    def index
        @universes = Universe.all
    end
    
    def show
        set_universe
    end
    
    def new
        @universe = Universe.new
    end
    
    def edit
        set_universe
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
        set_universe
        if @universe.update(universe_params)
            redirect_to @universe
        else
            render :edit
        end
    end
    
    def destroy
        set_universe
        @universe.destroy
        redirect_to universes_url
    end
    
    private
    
    def universe_params
        params.require(:universe).permit(
        :name, :description
        )
    end

    def set_universe 
        @universe = Universe.find_by(id: params[:id])
    end
end
