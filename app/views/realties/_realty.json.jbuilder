json.extract! realty, :id, :name, :address, :price, :rooms, :bathrooms, :created_at, :updated_at
json.url realty_url(realty, format: :json)
