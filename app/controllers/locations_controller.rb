class LocationsController < ApplicationController

    def index
        @locations = Location.all
    end

    def show
        @location = Location.find(params[:id])
        @room = Room.new
    end

    def new
        @location = Location.new
    end

    def create
        @user = User.find(location_params["user_id"])
        @location = @user.locations.create(name: location_params["name"], address: location_params["address"])
        if @location.valid?
            redirect_to @location
        else
            flash[:error]
            render :new
        end
    end

    def update
        @location = Location.find(params[:id])
        @location.rooms << Room.find(params["location"]["room_ids"])
        redirect_to @location
    end



    private
    def location_params
        params.require(:location).permit(:name, :room_ids, :user_id, :address)
    end
end
