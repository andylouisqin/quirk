class RoomsController < ApplicationController
    def home
        @rooms = Room.all
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new(room_params)
    end
end
