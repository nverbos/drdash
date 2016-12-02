class Program < ApplicationRecord
  has_many :events
  has_many :devices, through: :device_enrollment
  has_many :systems, through: :system_enrollment
end
