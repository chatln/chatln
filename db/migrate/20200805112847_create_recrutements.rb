class CreateRecrutements < ActiveRecord::Migration[5.2]
  def change
    create_table :recrutements do |t|
      t.string :title
      t.text :content
      t.string :city
      t.string :role
      t.string :status
      t.string :count_job
      t.string :matiere
      t.string :manager_mail
      t.string :user_id
      t.string :slug

      t.timestamps
    end
  end
end
