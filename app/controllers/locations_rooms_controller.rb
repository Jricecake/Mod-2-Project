class LocationsRoomsController < ApplicationController
    def index
        @locationsrooms = LocationsRoom.all
    end

    def show
        @locationsroom = LocationsRoom.find(params[:id])
        @pr = PlantsRoom.new
    end

    def create
        # byebug
        @locationsroom = LocationsRoom.create(locationsrooms_params)
        # byebug
        # @room = Room.find(locationsrooms_params["room_id"])]
        @location = Location.find(locationsrooms_params["location_id"])
        # byebug
        redirect_to @location
    end
    def update
        @locationsroom = locationsroom.find(params[:id])
        @locationsroom.update(locationsrooms_params)
        redirect_to @locationsroom
    end

    private
    def locationsrooms_params
        params.require(:locations_room).permit(:location_id, :room_id)
    end
end