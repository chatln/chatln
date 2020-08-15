json.extract! book, :id, :title, :content, :describre, :cover, :author, :category, :price, :status, :created_at, :updated_at
json.url book_url(book, format: :json)
