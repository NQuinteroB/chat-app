class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all
  end

  def show
    @chat_rooms.all
  end

  def create
  end

  def new
    @chat_rooms = ChatRoom.new
  end
end
