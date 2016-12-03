class System < ApplicationRecord
  has_many :devices
  has_many :system_enrollments
  has_many :programs, through: :system_enrollments
  has_many :events, through: :programs
end
