class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  acts_as_taggable

  validates :answer, presence: true

  # geocoded_by :ip_address
  # after_validation :geocode

  # def ip_address
  #   result = request.location
  # end

end


