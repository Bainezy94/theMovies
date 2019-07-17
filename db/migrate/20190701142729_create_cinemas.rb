class CreateCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :cinemas do |t|
      t.string :cinema
      t.string :cinema_type

      t.timestamps
    end
  end
end
