json.extract! trip, :id, :destination_name, :latitude, :longtitude, :status, :rating, :user_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
