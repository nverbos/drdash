class System < ApplicationRecord
  has_many :devices
  has_many :programs, through: :system_enrollment
end
