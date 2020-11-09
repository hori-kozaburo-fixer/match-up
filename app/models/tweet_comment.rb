class TweetComment < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :text, presence: true, length: { maximum: 30 }
end
