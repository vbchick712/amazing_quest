class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :task
      t.string :answer
      t.string :clue1
      t.string :clue2
      t.string :clue3
      t.string :clue_time
      t.string :answer_comment
      t.string :skip_comment

      t.timestamps
    end
  end
end
