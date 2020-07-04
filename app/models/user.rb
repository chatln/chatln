class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  #RELATIONS
  has_many :courses, dependent: :destroy
  has_many :matieres, through: :courses
  belongs_to :level, optional: true
  has_many :comments, through: :courses
  #presence
  validates :username,
            :contact,
            :city,
            :email,
            :status,
            :school_name,
            :gender, presence: true
  #unique
  # validates :contact,
  #           :matricule, uniqueness: true

##### Add enum type
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

NIVEAUX= ["3e", "Tle A", "Tle D", "Tle C"]
CITY= ["Tiassalé", "N'Douci","Agboville","Odienné"]
end
