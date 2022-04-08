json.extract! calendar, :id, :date, :event, :memo, :created_at, :updated_at
json.url calendar_url(calendar, format: :json)
