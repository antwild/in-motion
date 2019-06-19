class User < ApplicationRecord
  has_many :preconsultations
  has_many :services, through: :preconsultations
  has_many :blogs

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
