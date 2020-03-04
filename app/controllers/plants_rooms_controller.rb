class PlantsRoomsController < ApplicationController

    def create
        @pr = PlantsRoom.new
    end
end