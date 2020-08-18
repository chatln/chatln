class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :content
      t.string :describre
      t.string :cover
      t.string :author
      t.string :category
      t.string :price
      t.string :status
      t.string :slug

      t.timestamps
    end
  end
end
