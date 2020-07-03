class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :course

  #Validates
  validates :course_id, :content, :user_id,  presence:true
end
