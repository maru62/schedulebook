json.extract! purchase, :id, :date, :purchase, :shop, :location, :goods, :price, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
