class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_id
      t.text :label
      t.string :question_type_id

      t.timestamps null: false
    end
  end
end
