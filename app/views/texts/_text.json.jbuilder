json.extract! text, :id, :message_id, :content, :size, :color, :weight, :created_at, :updated_at
json.url text_url(text, format: :json)
