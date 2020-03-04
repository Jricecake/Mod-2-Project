class LocationsController < ApplicationController

    def index
        @locations = Location.all
    end

    def show
        @location = Location.find(params[:id])
    end

    def new
        @location = Location.new
    end

    def create
        @location = Location.create(location_params)
        if @location.valid?
            redirect_to @location
        else
            flash[:error]
            render :new
        end
    end

    private
    def location_params
        params.require(:location).permit(:name, :room_ids)
    end
end
