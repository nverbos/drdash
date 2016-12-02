class SystemEnrollment < ApplicationRecord
  belongs_to :system
  belongs_to :program
end
