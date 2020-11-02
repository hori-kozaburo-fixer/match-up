class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
<<<<<<< Updated upstream
    # stream_from "some_channel"
=======
    chat_room_channel = ChatRoom.find(params[:id])
    stream_for chat_room_channel
>>>>>>> Stashed changes
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

<<<<<<< Updated upstream
  def speak
=======
  def speak(data)
    ActionCable.server.broadcast "chat_room_channel", chat_room_id: data['room_id'], user_id: data['user_id'], message: data['message']
>>>>>>> Stashed changes
  end
end
