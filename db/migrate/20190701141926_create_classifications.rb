class CreateClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :classifications do |t|
      t.string :classification
      t.text :description

      t.timestamps
    end
  end
end
