class Chatroom < ApplicationRecord
  has_many :chatmessages
  has_many :chatroomusers
end
