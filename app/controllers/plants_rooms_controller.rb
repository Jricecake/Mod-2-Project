class PlantsRoomsController < ApplicationController
    def index
        @plantsrooms = PlantsRoom.all
    end

    def show
        @plantsroom = PlantsRoom.find(params[:id])
    end

    def create
        @pr = PlantsRoom.new
    end
end