class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content

      t.timestamps
    end
    add_reference :answers, :question, index: true
  end
end
