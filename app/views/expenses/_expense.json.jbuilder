json.extract! expense, :id, :date, :expense, :purchase, :created_at, :updated_at
json.url expense_url(expense, format: :json)
