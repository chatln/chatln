class RoomsController < ApplicationController

  before_action :slug_room
  before_action :load_entities

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    @room_message = RoomMessage.new room: @room
    @room_messages = @room.room_messages.includes(:user)
  end

  def create
    @room = Room.new permitted_parameters

    if @room.save
      flash[:success] = "Vous avez créer le Groupe #{@room.name}."
      redirect_to rooms_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update_attributes(permitted_parameters)
      flash[:success] = " Vous avez mise à jour le Groupe #{@room.name}."
      redirect_to rooms_path
    else
      render :new
    end
  end

  protected

  def slug_room
    @room = Room.friendly.find(params[:id]) if params[:id]
  end

  def load_entities
    @rooms = Room.all
  end

  def permitted_parameters
    params.require(:room).permit(:name)
  end

end
