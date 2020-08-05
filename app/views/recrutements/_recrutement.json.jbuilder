json.extract! recrutement, :id, :title, :content, :city, :role, :status, :created_at, :updated_at
json.url recrutement_url(recrutement, format: :json)
