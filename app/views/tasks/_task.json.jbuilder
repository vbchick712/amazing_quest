json.extract! task, :id, :name, :task, :answer, :clue1, :clue2, :clue3, :clue_time, :answer_comment, :skip_comment, :created_at, :updated_at
json.url task_url(task, format: :json)
