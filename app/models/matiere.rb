class Matiere < ApplicationRecord

  has_many :courses
  has_many :users, through: :courses

#VALIDATES (validates presence: true )
  validates :title, :slug, presence: true,
              length: { minimum: 3, maximum:25 }

  #SLUG
  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    title_changed?
  end

end
