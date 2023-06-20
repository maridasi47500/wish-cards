json.extract! email, :id, :title, :email, :message_id, :created_at, :updated_at
json.url email_url(email, format: :json)
