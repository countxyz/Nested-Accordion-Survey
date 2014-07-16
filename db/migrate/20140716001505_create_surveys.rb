class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.timestamps null: false

      t.string :name, null: false
      t.string :slug
    end
    add_index :surveys, :name, unique: true
    add_index :surveys, :slug, unique: true
  end
end
