class AddProjectIdToProjectmemberships < ActiveRecord::Migration
  def change
    add_column :projectmemberships, :project_id, :integer
  end
end
