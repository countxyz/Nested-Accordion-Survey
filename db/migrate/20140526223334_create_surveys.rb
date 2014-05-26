class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :surveys, :name, unique: true, using: :btree
    add_index :surveys, :slug, unique: true
  end
end
