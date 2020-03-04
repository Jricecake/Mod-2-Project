class PlantsController < ApplicationController
    def index
        @plants = Plant.all
    end

    def show
        @plant = Plant.find(params[:id])
    end

    def new
        @plant = Plant.new
    end

    def create
        byebug
        @plant = Plant.create(plant_params)
        if @plant.valid?
            redirect_to @plant
        else
            flash[:error]
            render :new
        end
    end

    private
    def plant_params
        params.require(:plant).permit(:name, :room_ids)
    end
end
