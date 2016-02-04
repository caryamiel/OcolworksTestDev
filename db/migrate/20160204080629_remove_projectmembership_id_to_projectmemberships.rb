class RemoveProjectmembershipIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :projectmembership_id, :integer
  end
end
