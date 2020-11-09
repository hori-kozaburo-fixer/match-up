class ChatMessageController < ApplicationController
  before_action :authenticate_user!
  def show
    chat_room = ChatRoom.find_by(id: params[:id])
    @chat_room_user = chat_room.chat_room_users.where.not(user_id: current_user.id).first.user
    @chat_messages = ChatMessage.where(chat_room: chat_room).order(:created_at)
    @chat_message = ChatMessage.new
  end

  def create
    @chat_message = ChatMessage.new(text: params[:message][:text])
  end
end
