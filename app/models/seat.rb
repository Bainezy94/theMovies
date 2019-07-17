class Seat < ApplicationRecord
  belongs_to :showtime
  belongs_to :user
end
