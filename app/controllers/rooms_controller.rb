class RoomsController < ApplicationController

    def index
        @rooms = Room.all
    end
    
    def show
        @room = Room.all.find(params[:id])
    end
end
