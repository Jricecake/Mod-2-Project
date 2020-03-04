class RoomsController < ApplicationController

    def index
        @rooms = Room.all
    end
    
    def show
        @room = Room.all.find(params[:id])
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
        params.require(:room).permit(:name, :location_id)
    end
end
