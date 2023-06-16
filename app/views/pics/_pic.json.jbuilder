json.extract! pic, :id, :filename, :x, :y, :width, :height, :created_at, :updated_at
json.url pic_url(pic, format: :json)
