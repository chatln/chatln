class AddfieldsLevelToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :level_id, :bigint


  end
  def change
    add_index :courses, :level_id, unique: true
  end

  def change
     add_reference :courses, :level, foreign_key: true
     rename_column :users, :promotion_name, :level_id
  end
end
