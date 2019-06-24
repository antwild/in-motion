class Client < ApplicationRecord
  belongs_to :enquiry, through: :preconsultation
  belongs_to :preconsultation
  has_many :consultations
  has_many :packages, through: :consultations
end
