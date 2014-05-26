class CreateAnswer < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content

      t.timestamps
    end
    add_reference :answers, :question, index: true
  end
end
