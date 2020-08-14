class CreateJobPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :job_posts do |t|
      t.string :nom_complet
      t.string :promotion
      t.string :experience
      t.string :nb_classe
      t.string :contact
      t.string :contact_whatsapp
      t.string :know_it
      t.string :school
      t.string :gender
      t.string :personal_pc
      t.bigint :recrutement_id
      t.timestamps
    end
  end
end
