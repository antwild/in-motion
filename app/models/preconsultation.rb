class Preconsultation < ApplicationRecord
  belongs_to :client
  # accepts_nested_attributes_for :goal

  validates :sex, inclusion: { in: ["Male", "Female"] }
  validates :goal, inclusion: { in:
    [
      "Lose body fat",
      "Build Muscle",
      "Get stronger",
      "Get fitter",
      "Performance Based",
      "Other",
    ] }
  # Need to add validations
end
