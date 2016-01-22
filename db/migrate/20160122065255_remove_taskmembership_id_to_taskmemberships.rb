class RemoveTaskmembershipIdToTaskmemberships < ActiveRecord::Migration
  def change
    remove_column :taskmemberships, :taskmembership_id, :integer
  end
end
