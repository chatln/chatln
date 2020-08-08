class CreateJobPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :job_posts do |t|
      t.string :nom_complet
      t.string :promotion
      t.string :experience
      t.string :nb_classe
      t.string :contact
      t.string :contact_sec
      t.string :Know_IT
      t.string :school
      t.string :gender
      t.string :Dispo_PC
      t.bigint :recrutement_id
      t.timestamps
    end
  end
end
