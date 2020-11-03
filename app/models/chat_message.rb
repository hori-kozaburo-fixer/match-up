class ChatMessage < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user

  # validates :user_id, presence: true
  # validates :message, presence: true, length: { maximum: 500 }

  after_create_commit { MessageBroadcastJob.perform_later self }
end
