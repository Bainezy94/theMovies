class AddShowTimeRefToSeats < ActiveRecord::Migration[5.2]
  def change
    add_reference :seats, :showtime, foreign_key: true
  end
end
