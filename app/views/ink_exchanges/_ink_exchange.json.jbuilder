json.extract! ink_exchange, :id, :ink_id, :user_id, :room, :printer, :exchange_datetime, :quantity, :emptying, :created_at, :updated_at
json.url ink_exchange_url(ink_exchange, format: :json)