json.extract! upload, :id, :name, :url, :created_at, :updated_at
json.url upload_url(upload, format: :json)