class ChangeCineamColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cinemas, :type, :cinema_type
  end
end
