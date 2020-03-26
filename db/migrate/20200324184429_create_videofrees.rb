class CreateVideofrees < ActiveRecord::Migration[6.0]
  def change
    create_table :videofrees do |t|
      t.string :name
      t.string :description
      t.string :videofree_source_id
      t.string :slug
      t.integer :projectfree_id
      t.timestamps
    end
    add_index :videofrees, :slug, unique: true
    add_index :videofrees, :projectfree_id
  end
end
