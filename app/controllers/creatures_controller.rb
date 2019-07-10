class CreaturesController < ApplicationController
  before_action :require_login

    def index
        @universe = Universe.find_by(id: params[:universe_id])
        if @universe.nil?
            redirect_to universes_path, alert: "Universe not found"
        else
            @creatures = @universe.creatures
        end
    end
  
    def show
        @universe = Universe.find_by(id: params[:universe_id])
        @creature = @universe.creatures.find_by(id: params[:id])
        if @creature.nil?
            redirect_to universe_creatures_path(@universe), alert: "Creature not found"
        end
    end
  
    def new
        @universe = Universe.find_by(id: params[:universe_id])
        @creature = Creature.new
    end
  
    def create
      @creature = Creature.new(creature_params)
      @universe = Universe.find_by(id: params[:universe_id])
      @creature.universe = @universe
      @creature.save
  
      if @creature.save
        redirect_to universe_creature_path(@universe, @creature)
      else
        render :new
      end
    end
  
    def edit
        @universe = Universe.find_by(id: params[:universe_id])
        @creature = Creature.find(params[:id])
    end
  
    def update
      @creature = Creature.find(params[:id])
      @universe = Universe.find_by(id: params[:universe_id])

      @creature.update(creature_params)
  
      if @creature.save
        redirect_to universe_creature_path(@universe, @creature)
      else
        render :edit
      end
    end
  
    def destroy
      @creature = Creature.find(params[:id])
      @universe = Universe.find_by(id: params[:universe_id])
      @creature.destroy
      flash[:notice] = "Creature deleted."
      redirect_to universe_creatures_path(@universe)
    end

    def collect
      @creature = Creature.find(params[:creature][:id])
      @traveler = Traveler.find(session[:traveler_id])

      @creature.collect_wisdom(@traveler)

      redirect_to universe_creature_path(@universe, @creature)
    end
  
    private
  
    def creature_params
      params.require(:creature).permit(:name, :universe_id, :description)
    end
end
