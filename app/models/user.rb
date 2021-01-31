class User < ApplicationRecord
  has_secure_password
  has_many :watchlists, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :friends, :through => :friendships

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
