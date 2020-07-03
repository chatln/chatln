class AddFieldsMatiereToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :matiere_id, :bigint

  end
  def change
    add_index :courses, :matiere_id, unique: true
  end

  def change
     add_reference :courses, :matiere, foreign_key: true
  end

end
