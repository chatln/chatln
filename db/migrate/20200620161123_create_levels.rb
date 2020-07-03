class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.string :title
      t.string :slug
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
    add_index :levels, :title, unique: true
  end
end
