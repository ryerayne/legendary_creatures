class CreaturesController < ApplicationController
    def index
        if params[:universe_id]
            @universe = Universe.find_by(id: params[:universe_id])
            if @universe.nil?
               redirect_to universes_path, alert: "Universe not found"
            else
                @creatures = @universe.creatures
            end
        else
            @creatures = Creature.all
        end
    end
  
    def show
      if params[:universe_id]
        @universe = Universe.find_by(id: params[:universe_id])
        @creature = @universe.creatures.find_by(id: params[:id])
        if @creature.nil?
          redirect_to universe_creatures_path(@universe), alert: "Creature not found"
        end
      else
        @creature = Creature.find(params[:id])
      end
    end
  
    def new
      @creature = Creature.new
    end
  
    def create
      @creature = Creature.new(creature_params)
  
      if @creature.save
        redirect_to @creature
      else
        render :new
      end
    end
  
    def edit
      @creature = Creature.find(params[:id])
    end
  
    def update
      @creature = Creature.find(params[:id])
  
      @creature.update(creature_params)
  
      if @creature.save
        redirect_to @creature
      else
        render :edit
      end
    end
  
    def destroy
      @creature = Creature.find(params[:id])
      @creature.destroy
      flash[:notice] = "Creature deleted."
      redirect_to creatures_path
    end
  
    private
  
    def creature_params
      params.require(:creature).permit(:name, :universe_name, :description)
    end
end
