class CreateProjectfrees < ActiveRecord::Migration[6.0]
  def change
    create_table :projectfrees do |t|
      t.string :name
      t.string :description
      t.string :web_link
      t.string :github_link

      t.timestamps
    end
  end
end
