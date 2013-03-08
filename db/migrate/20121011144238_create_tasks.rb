require_relative '../config'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table(:tasks) do |t|
      t.integer :id
      t.text :task
      t.date :completed_at
      t.timestamps
    end
  end
end
