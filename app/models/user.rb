class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :tweets
  has_many :chat_room_users
  has_many :chat_messages
  has_many :active_notifications, class_name: 'Notification', foreign_key: 'visitor_id', dependent: :destroy
  has_many :passive_notifications, class_name: 'Notification', foreign_key: 'visited_id', dependent: :destroy
  has_many :sns_credentials
  belongs_to_active_hash :team
  mount_uploader :img_name, ImgNameUploader
  
  enum sex:{男: 0, 女: 1}
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  with_options presence: true do
    validates :nickname, length: { maximum: 30 }
    validates :birth_day
    validates :self_introduction, length: { maximum: 300}
    validates :sex
    validates :img_name
    validates :team_id
  end

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    user = User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
      email: auth.info.email
    )
    if user.persisted?
      sns.user = user
      sns.save
    end
  end

end
        