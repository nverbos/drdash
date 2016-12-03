class CreateDeviceEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :device_enrollments do |t|
      t.belongs_to :program, index: true
      t.belongs_to :device, index: true
      t.timestamps
    end
  end
end