class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :start
      t.time :duration
      t.belongs_to :program, index: true
      t.timestamps
    end
  end
end
