class RemoveMemberpIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :memberp_id, :string
  end
end
