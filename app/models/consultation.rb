class Consultation < ApplicationRecord
  belongs_to :client
  has_many :packages
end
