class Showtime < ApplicationRecord
  belongs_to :movie
  belongs_to :cinema

  has_many :seats
end
