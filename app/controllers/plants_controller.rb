class PlantsController < ApplicationController
    def index
        @plants = Plant.all
    end

    def show
        @plant = Plant.find(params[:id])
        @rooms = @plant.rooms
        @plantsrooms = PlantsRoom.all
    end

    def new
        byebug
        @plant = Plant.new
    end

    def create
        # byebug
        @room = Room.find(params["plant"]["room_id"])
        @plant = @room.plants.create(plant_params)
        if @plant.valid?
            redirect_to @room
        else
            flash[:error]
            render :new
        end
    end

    def update
        @plant = Plant.find(params[:id])
        @plant.plants_rooms.first.update(room_id: params["plant"]["room_ids"])
        redirect_to @plant
    end

    private
    def plant_params
        params.require(:plant).permit(:name, :description)
    end
end
