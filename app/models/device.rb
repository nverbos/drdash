class Device < ApplicationRecord
  has_many :programs, through: :device_enrollment
  has_secure_token :key
end
