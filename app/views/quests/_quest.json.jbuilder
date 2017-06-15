json.extract! quest, :id, :name, :description, :start_date, :start_time, :invite_msg, :start_msg, :final_msg, :created_at, :updated_at
json.url quest_url(quest, format: :json)
