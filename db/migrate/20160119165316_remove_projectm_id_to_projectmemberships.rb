class RemoveProjectmIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :projectm_id, :integer
  end
end
