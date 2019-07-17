class RemoveShowTimesRefFromSeats < ActiveRecord::Migration[5.2]
  def change
    remove_reference :seats, :showtimes, foreign_key: true
  end
end
