class Program < ApplicationRecord
  has_many :events
  has_many :system_enrollments
  has_many :devices, through: :device_enrollments
  has_many :systems, through: :system_enrollments

end