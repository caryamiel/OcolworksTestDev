class RemoveProjectmemberedIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :projectmembered_id, :integer
  end
end
