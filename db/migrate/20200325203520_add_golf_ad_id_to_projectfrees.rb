class AddGolfAdIdToProjectfrees < ActiveRecord::Migration[6.0]
  def change
    add_column :projectfrees, :freegolf_ad_id, :string
  end
end
