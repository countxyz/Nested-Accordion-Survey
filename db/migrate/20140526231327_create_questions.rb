class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content

      t.timestamps
    end
    add_reference :questions, :survey, index: true
  end
end
