class RemoveTasksmembershipIdToTaskmemberships < ActiveRecord::Migration
  def change
    remove_column :taskmemberships, :tasksmembership_id, :integer
  end
end
