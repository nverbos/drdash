class DeviceEnrollment < ApplicationRecord
  belongs_to :device
  belongs_to :program
end
