# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
Author.destroy_all

50.times do
  Book.create(
    title: Faker::Book.title,
    sub_title: Faker::Book.title,
    genre: Faker::Book.genre,
    classification: Book.classifications.sample,
    book_type: Book.book_types.sample,
    year: Faker::Number.between(1600, 2019)
  )
end

25.times do
  Author.create(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name ,
    age: Faker::Number.between(11,99)
  )
end

book_ids = Book.pluck(:id)  # select id from books
author_ids = Author.pluck(:id)

book_ids.each do |book_id|
  rand(1..4).times do
    # 1) generate a random author ID from the list of possible author IDs
    author_id = author_ids.sample

    # 2) create an authorship which has the current book ID and the ID of the author
    #    from step 1
    Authorship.create(author_id: author_id, book_id: book_id)
  end
end
      