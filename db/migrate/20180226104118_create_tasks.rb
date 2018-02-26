class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :completed_time

      t.timestamps
    end
  end
end
