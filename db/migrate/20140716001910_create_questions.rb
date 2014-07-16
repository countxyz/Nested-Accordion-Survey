class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.timestamps null: false

      t.text :content
    end
    add_reference :questions, :survey, index: true
  end
end
