class RoomsController < ApplicationController
    def index
        @rooms = Room.all
    end

    def show
        @room = Room.find(params[:id])
        @question = @room.questions.build
    end

    def create
        @room = Room.new(room_params)

        if @room.save
            redirect_to @room
        else
            flash[:error] = @room.errors.full_messages
            render "new"
        end
    end

    def new
        @room = Room.new
    end

    def edit
        @room = Room.find(params[:id])
    end

    def update
        @room = Room.find(params[:id])
        @room.update(room_params)
    end

    def destroy
        room = Room.find(params[:id])
        room.destroy

        redirect_to "/rooms"
    end

    private
        
    def room_params
        params.require(:room).permit(:name, :description)
    end
end
