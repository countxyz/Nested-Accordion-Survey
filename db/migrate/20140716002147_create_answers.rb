class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.timestamps null: false

      t.string :content, null: false
    end
    add_reference :answers, :question, index: true
  end
end
