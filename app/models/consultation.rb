class Consultation < ApplicationRecord
  belongs_to :users
  belongs_to :services
end
