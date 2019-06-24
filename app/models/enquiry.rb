class Enquiry < ApplicationRecord
  has_many :preconsultations
  # country_select(priority_countries: ["GB", "FR", "DE"])
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :country, presence: true
  validates :reason, presence: true
end
