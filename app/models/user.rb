class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { maximum: 10 }
  validates :email, uniqueness: true, presence: true
end
