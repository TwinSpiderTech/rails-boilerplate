json.extract! book, :id, :title, :description, :author_id, :price, :published_date, :created_at, :updated_at
json.url book_url(book, format: :json)