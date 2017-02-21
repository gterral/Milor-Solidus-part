class AddQuestionDecisionToAnswer < ActiveRecord::Migration
  def change
    add_reference :answers, :question_decision, index: true, foreign_key: true
  end
end
