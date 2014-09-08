class User < ActiveRecord::Base
  has_many :answers
  has_many :questions, through: :answers

  validates :user_name, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :recoverable,
  devise :database_authenticatable, :registerable,
          :rememberable, :trackable, :validatable

  
end
