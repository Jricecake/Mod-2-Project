class PlantsRoomsController < ApplicationController
    def index
        @plantsrooms = PlantsRoom.all
    end

    def show
        @plantsroom = PlantsRoom.find(params[:id])
    end

    def create
        PlantsRoom.create(plantsrooms_params)
        @room = Room.find(params["plants_room"]["room_id"])
        # byebug
        redirect_to @room
    end

    private
    def plantsrooms_params
        params.require(:plants_room).permit(:plant_id, :nickname, :room_id)
    end
end