json.extract! task, :id, :title, :note, :due_by_date, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
