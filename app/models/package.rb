class Package < ApplicationRecord
  belongs_to :consultation
  belongs_to :client, through: :consultation
end
