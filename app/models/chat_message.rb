class ChatMessage < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 500 }
end
