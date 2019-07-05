class Consultation < ApplicationRecord
  belongs_to :preconsultation
  belongs_to :client, through: :preconsultation
end
