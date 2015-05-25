

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |task|
      task.string :task
      task.boolean :complete, default: false
      task.datetime :created_at
      task.datetime :updated_at
    end
  end
end