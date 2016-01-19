class AddProjectmIdToProjectmemberships < ActiveRecord::Migration
  def change
    add_column :projectmemberships, :projectm_id, :integer
  end
end
