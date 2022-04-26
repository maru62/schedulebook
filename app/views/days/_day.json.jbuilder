json.extract! day, :id, :date, :event, :expense, :memo, health, weather :created_at, :updated_at
json.url day_url(day, format: :json)
