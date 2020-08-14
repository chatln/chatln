class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable,  and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable


  #RELATIONS
  has_many :courses, dependent: :destroy
  has_many :matieres, through: :courses
  belongs_to :level, optional: true
  has_many :comments, through: :courses
  has_many :recrutements

  #PRESENTE
  validates :username,
            :contact,
            :email,
            :role, presence: true


  #UNIQUENESS
   validates :contact,
             :matricule, uniqueness: true

#ENUM TYPE
   #enum status: [:eleve, :prof, :administration]
   #enum gender: [:femme, :homme]

  #Avatar
  def gravatar_url
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "https://gravatar.com/avatar/#{gravatar_id}.png"
  end


  #slug
  extend FriendlyId
    friendly_id :username, use: :slugged

  def should_generate_new_friendly_id?
      username_changed?
  end

#COSTANTE
STATUS= ["Officiel", "Libre"]
NIVEAUX= ["Tle A", "Tle D", "Tle C"]
CITY= ["Tiassalé", "N'Douci","Agboville","Odienné","Divo", "Kouto","Man","Bouaké","Yamoussokro","Autres villes"]
end
