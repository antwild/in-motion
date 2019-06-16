class Service < ApplicationRecord
  has_many :consultations
  has_many :users, through: :consultations
  validates :service_type, inclusion: { in: ["online", "in person", "group"] }
end
