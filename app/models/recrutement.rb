class Recrutement < ApplicationRecord

  has_many :recrutements

  #VALIDATES (validates presence: true )
  validates :title,
        :content,
        :slug,
        :role,
        :count_job, presence: true


  #slug
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
      title_changed?
  end

  #COSTANTE
STATUS= ["Personnel", "Prof Partenaire"]
ROLE= ["City Manager", "Professeur Partenaire"]
CITY= ["Tiassalé", "N'Douci","Agboville","Odienné","Divo", "Kouto","Man","Bouaké","Yamoussokro","Autres villes"]
COUNT_JOB= ["1", "+5", "+10", "+15", "+20"]
end
