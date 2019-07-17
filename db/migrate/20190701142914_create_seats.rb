class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :seat
      t.references :showtimes, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
