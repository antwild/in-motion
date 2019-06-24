class Preconsultation < ApplicationRecord
  belongs_to :enquiry
  has_many :clients

  validates :sex, inclusion: { in: ["Male", "Female"] }
  validates :goal, inclusion: { in: ["Lose weight", "Gain strength", "Gain endurance"] }
  validates :period_timeframe, inclusion: { in: ["Weeks", "Months"] }
  validates :contact_type, inclusion: { in: ["In person", "Phone", "Video chat"] }
  # Need to add validations
end
