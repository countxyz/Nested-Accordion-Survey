class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :name

      t.timestamps
    end
    add_index :polls, :name, using: :btree
  end
end
