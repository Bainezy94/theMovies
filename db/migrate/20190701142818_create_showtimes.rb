class CreateShowtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :showtimes do |t|
      t.references :movie, foreign_key: true
      t.datetime :date
      t.references :cinema, foreign_key: true

      t.timestamps
    end
  end
end
