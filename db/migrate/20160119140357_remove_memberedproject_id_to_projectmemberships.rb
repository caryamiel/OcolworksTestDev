class RemoveMemberedprojectIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :memberedproject_id, :integer
  end
end
