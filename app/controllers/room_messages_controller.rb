class RoomMessagesController < ApplicationController

 #before_action :slug_room
 before_action :load_entities

  def create
    @room_message = RoomMessage.create user: current_user,
                                       room: @room,
                                       message: params.dig(:room_message, :message)

    RoomChannel.broadcast_to @room, @room_message #Broadcast room messages

  end

  protected

  #def slug_room
  #  @room = Room.friendly.find(params[:id]) if params[:id]
  #end

  def load_entities
    @room = Room.find(params.dig(:room_message, :room_id))
  end
end
