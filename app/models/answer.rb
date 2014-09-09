class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  # has_many :taggings
  # has_many :tags, through: :taggings
  acts_as_taggable

end