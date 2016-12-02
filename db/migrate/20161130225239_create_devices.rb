class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :key
      t.belongs_to :system, index: true
      t.timestamps
    end
  end
end
