class CreateQuestionsUsersJoin < ActiveRecord::Migration
  def up
    create_table 'questions_users', :id => false do |t|
      t.column 'question_id', :integer
      t.column 'user_id', :integer
    end
  end

  def down
    drop_table 'questions_users'
  end
end
