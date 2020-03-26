class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :web_link
      t.string :github_link
      t.string :slug, null: false
      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
