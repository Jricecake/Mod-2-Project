class RoomsController < ApplicationController

    def index
        @rooms = Room.all
        @room = Room.new
    end
    
    def show
        @room = Room.all.find(params[:id])
        @pr = PlantsRoom.new
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
        @room = Room.create(room_params)
        if @room.valid?
            redirect_to rooms_path
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
