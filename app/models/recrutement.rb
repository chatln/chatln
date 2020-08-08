class Recrutement < ApplicationRecord

  has_many :job_posts

  #VALIDATES (validates presence: true )
  validates :title,
            :content,
            :slug,
            :role,
            :matiere,
            :count_job, presence: true


  #slug
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
      title_changed?
  end

  #CONSTANTES
STATUS= ["Ouvert", "Fermé"]
ROLE= ["Prof Partenaire CHATLN", "City Manager"]
CITY= ["Tiassalé", "N'Douci","Agboville","Odienné","Divo", "Kouto","Man","Bouaké","Yamoussokro","Autres villes"]
COUNT_JOB= ["1", "+5", "+10", "+15", "+20"]
MATIERES= ["Fr", "HG", "ANGLAIS", "ESPAGNOL", "ALLEMAND", "EDHC", "MATH", "PC", "SVT", "CITY MANAGER"]

end
