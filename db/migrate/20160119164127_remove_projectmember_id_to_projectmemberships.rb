class RemoveProjectmemberIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :projectmember_id, :integer
  end
end
