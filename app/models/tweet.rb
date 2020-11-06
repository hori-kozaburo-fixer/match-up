class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :team
  has_one_attached :image
  belongs_to :user
  has_many :tweet_comments, dependent: :destroy
  has_one_attached :image
  # mount_uploader :image, ImgNameUploader

  with_options presence: true do
    validates :name,   length: { maximum: 20 } 
    validates :image
    validates :text,   length: { maximum: 100 }    
    validates :team_id
  end
end
