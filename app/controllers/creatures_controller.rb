class CreaturesController < ApplicationController
  before_action :require_login

    def index
        set_universe
        if @universe.nil?
            redirect_to universes_path, alert: "Universe not found."
        else
            @creatures = @universe.creatures
        end
    end
  
    def show
        set_creature
        set_universe
        @traveler = Traveler.find(session[:traveler_id])

        if @creature.nil?
            redirect_to universe_creatures_path(@universe), alert: "Creature not found."
        elsif @universe.nil? 
          redirect_to universes_path, alert: "Universe not found."
        elsif @traveler.has_wisdom?(@creature) 
          @wisdom = @creature.wisdom.words
        else
        end
    end
  
    def new
      @creature = Creature.new
      set_universe
    end
  
    def create
      @creature = Creature.new(creature_params)
      set_universe
      @wisdom = Wisdom.new(words: params[:creature][:wisdom])
      @creature.universe = @universe
      @creature.save
      @wisdom.creature = @creature
      @wisdom.save

      if @creature.save
        redirect_to universe_creature_path(@universe, @creature)
      else
        render :new
      end
    end
  
    def edit
        set_creature
        set_universe
    end
  
    def update
      set_creature
      set_universe

      @creature.update(creature_params)
      @creature.wisdom.words = params[:creature][:wisdom]
      @creature.wisdom.save
  
      if @creature.save
        redirect_to universe_creature_path(@universe, @creature)
      else
        render :edit
      end
    end
  
    def destroy
      set_creature
      set_universe
      @creature.wisdom.destroy
      @creature.destroy
      redirect_to universe_creatures_path(@universe)
    end

    def collect
      @creature = Creature.find(params[:creature][:id])
      @universe = Universe.find_by(id: params[:universe][:id])
      set_traveler

      @traveler.collect_wisdom(@creature)

      redirect_to universe_creature_path(@universe, @creature)
    end
  
    private
  
    def creature_params
      params.require(:creature).permit(:name, :universe_id, :description)
    end

    def set_creature
      @creature = Creature.find_by(id: params[:id])
    end
end
