json.extract! book, :id, :title, :author, :genre, :classificaion, :type, :year, :created_at, :updated_at
json.url book_url(book, format: :json)
