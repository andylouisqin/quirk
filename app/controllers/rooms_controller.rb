class RoomsController < ApplicationController
    def home
        @rooms = Room.all
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new(room_params)
        redirect_to @room
    end

    def show
        @room = Room.find(params[:id])
    end
end
