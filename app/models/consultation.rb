class Consultation < ApplicationRecord
  belongs_to :client
  belongs_to :preconsultation, through: :client
  has_many :packages
end
