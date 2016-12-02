class CreateSystemEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :system_enrollments do |t|
      t.belongs_to :program, index: true
      t.belongs_to :system, index: true
      t.timestamps
    end
  end
end
