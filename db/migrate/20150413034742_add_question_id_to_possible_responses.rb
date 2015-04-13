class AddQuestionIdToPossibleResponses < ActiveRecord::Migration
  def change
    add_column :possible_responses, :question_id, :integer
  end
end
