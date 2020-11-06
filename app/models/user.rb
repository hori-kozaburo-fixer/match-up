class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :tweets
  has_many :chat_room_users
  has_many :chat_messages
  belongs_to_active_hash :team
  mount_uploader :img_name, ImgNameUploader

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex:{男: 0, 女: 1}
  
  
  validates :img_name, presence: true
end
        