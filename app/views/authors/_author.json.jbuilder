json.extract! author, :id, :author_name, :phone, :address, :published_books, :created_at, :updated_at
json.url author_url(author, format: :json)
