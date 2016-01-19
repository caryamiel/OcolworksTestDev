class RemoveProjectmembersIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :projectmembers_id, :integer
  end
end
