class AddGolfAdIdToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :golf_ad_id, :string
  end
end
