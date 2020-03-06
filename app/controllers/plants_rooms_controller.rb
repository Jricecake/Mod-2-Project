class PlantsRoomsController < ApplicationController

    def update
        @plantsroom = PlantsRoom.find(param[:id])
    end
end