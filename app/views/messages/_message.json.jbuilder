json.extract! message, :id, :sent_by, :body, :created_at, :updated_at
json.url message_url(message, format: :json)
