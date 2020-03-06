class PlantsRoomsController < ApplicationController
    def index
        @plantsrooms = PlantsRoom.all
    end

    def show
        
        @plantsroom = PlantsRoom.find(params[:id])
    end

    def new
        @plantsroom = PlantsRoom.new
    end

    def create
        @room = Room.new
        byebug
        PlantsRoom.create(plantsrooms_params)
        # byebug
        @locationsroom = LocationsRoom.find(params["plants_room"]["room_id"])
        # byebug
        redirect_to @locationsroom
    end
    def update
        @plantsroom = PlantsRoom.find(params[:id])
        @plantsroom.update(plantsrooms_params)
        redirect_to @plantsroom
    end

    private
    def plantsrooms_params
        params.require(:plants_room).permit(:plant_id, :description, :room_id)
    end
end