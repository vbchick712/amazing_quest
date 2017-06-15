class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :description
      t.string :start_date
      t.string :start_time
      t.string :invite_msg
      t.string :start_msg
      t.string :final_msg

      t.timestamps
    end
  end
end
