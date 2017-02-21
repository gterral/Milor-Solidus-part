class CreateQuestionDecisions < ActiveRecord::Migration


  def change
    create_table :question_decisions do |t|
      t.string 'statement'
      t.string 'typeq'
      t.integer 'dimension'
      t.timestamps null: false
    end
  end
end
