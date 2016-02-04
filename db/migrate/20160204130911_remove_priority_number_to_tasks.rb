class RemovePriorityNumberToTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :priority_number, :string
  end
end
