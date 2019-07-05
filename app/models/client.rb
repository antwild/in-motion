class Client < ApplicationRecord
  has_many :preconsultations
  has_many :consultations, through: :preconsultations
  has_many :packages, through: :consultations

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
