class Device < ApplicationRecord
  has_many :device_enrollments
  has_many :programs, through: :device_enrollments
  has_secure_token :key
end
