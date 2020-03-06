class RoomsController < ApplicationController

    def index
        @locations = Location.all
        @rooms = Room.all
        @room = Room.new
    end
    
    def show
        @room = Room.all.find(params[:id])
        @plant = Plant.new
    end

    def update
        PlantsRoom.create(room_id: params[:id], plant_id: params[:room][:plant_ids], nickname: params[:room][:nickname])
        @room = Room.all.find(params[:id])
        redirect_to @room
    end
    def new
        @room = Room.new
    end

    def create
        @location = Location.find(params["room"]["location_id"])
        @room = @location.rooms.create(room_params)
        if @room.valid?
            redirect_to @location
        else
            flash[:error]
            render :new
        end
    end

    private
    def room_params
        params.require(:room).permit(:name, :location_id, :plant_ids, :nickname)
    end
end
