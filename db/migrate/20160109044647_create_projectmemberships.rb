class CreateProjectmemberships < ActiveRecord::Migration
  def change
    create_table :projectmemberships do |t|
      t.integer :user_id
      t.integer :projectmembership_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
