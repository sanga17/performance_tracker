class CreateUserPerformanceParameters < ActiveRecord::Migration[5.1]
  def change
    create_table :user_performance_parameters do |t|
      t.integer :user_id
      t.integer :performance_parameter_id

      t.timestamps
    end
  end
end
