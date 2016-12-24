json.extract! transaction, :id, :user_id, :equipment_id, :RentedDatetime, :ReturnedDatetime, :contract, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)