class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :chat_messages
  has_many :chat_room_users
  belongs_to_active_hash :team
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex:{男: 0, 女: 1}
  
  mount_uploader :img_name, ImgNameUploader
  
  validates :img_name, presence: true
end
        