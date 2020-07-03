class Room < ApplicationRecord

  has_many :room_messages, dependent: :destroy,
                         inverse_of: :room


#slug
extend FriendlyId
  friendly_id :name, use: :slugged

def should_generate_new_friendly_id?
      name_changed?
  end
end
