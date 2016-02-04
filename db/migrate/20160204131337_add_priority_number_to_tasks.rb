class AddPriorityNumberToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :priority_number, :string
  end
end
