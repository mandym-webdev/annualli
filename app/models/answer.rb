class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  acts_as_taggable

  validates :answer, presence: true

end


