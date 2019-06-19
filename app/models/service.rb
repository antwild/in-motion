class Service < ApplicationRecord
  has_many :preconsultations
  has_many :users, through: :preconsultations
  validates :service_type, inclusion: { in: ["online", "in person", "group"] }
end
