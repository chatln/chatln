class AddfieldsLevelToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :level_id, :bigint


  end
  def change
    add_index :courses, :level_id, unique: true
  end

  def change
     add_reference :courses, :level, foreign_key: true
  end
end
