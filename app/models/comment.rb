class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  has_many :likes, dependent: :destroy
  # has_many :users, through: :likes
  has_many :liked_users, through: :likes, source: :user

  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true, length: { maximum: 250 }
end
