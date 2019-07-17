class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.date :release_date
      t.string :director
      t.text :synopsis
      t.references :classification, foreign_key: true
      t.string :artwork
      t.string :trailer
      t.integer :duration

      t.timestamps
    end
  end
end
