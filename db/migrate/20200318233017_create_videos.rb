class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :video_source_id
      t.string :slug
      t.integer :project_id
      t.timestamps
    end
    add_index :videos, :slug, unique: true

    add_index :videos, :project_id
  end
end
