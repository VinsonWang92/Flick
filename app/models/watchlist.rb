class Watchlist < ApplicationRecord
  belongs_to :user
  validates :user_id, :movie_id, :title, presence: true
end
