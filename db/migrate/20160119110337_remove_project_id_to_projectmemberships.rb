class RemoveProjectIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :project_id, :integer
  end
end
