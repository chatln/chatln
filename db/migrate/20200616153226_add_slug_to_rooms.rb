class AddSlugToRooms < ActiveRecord::Migration[5.2]


  def change
    add_column :rooms, :slug, :string
    add_index :rooms, :slug, unique: true
    add_index :users, :slug, unique: true
  end
end
