class RoomsController < ApplicationController

    def index
        @rooms = Room.all
    end
    
    def show
        @room = Room.all.find(params[:id])

        @pr = PlantsRoom.new
        # @pr.create(room_id: params[:id], plant_id: params[:plant_id])
        
    end

    def update
        # @room.update(room_params)
    

        # byebug
        PlantsRoom.create(room_id: params[:id], plant_id: params[:room][:plant_ids])

        @room = Room.all.find(params[:id])
        redirect_to @room
    end
    def new
        @room = Room.new
    end

    def create
        @room = Room.create(room_params)
        if @room.valid?
            redirect_to @room
        else
            flash[:error]
            render :new
        end
    end

    private
    def room_params
        params.require(:room).permit(:name, :location_id, :plant_ids)
    end
end
