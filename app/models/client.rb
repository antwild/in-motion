class Client < ApplicationRecord
  belongs_to :preconsultation
  has_many :consultations
end
