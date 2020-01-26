json.extract! product, :id, :title, :description, :country, :tags, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
