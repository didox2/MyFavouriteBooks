# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
books = [
    { title: 'Deception Point', genre: 'Science Fiction', isbn_number: '1234', publish_date: '01-Jun-2003' },
    { title: 'The Shining', genre: 'Horror', isbn_number: '1234', publish_date: '01-Jun-2004' },
    { title: '50 shadades of gray', genre: 'Romance', isbn_number: '1234', publish_date: '01-Jun-2005' },
    { title: 'Le Petit Prince', genre: 'Action and Adventure', isbn_number: '1234', publish_date: '01-Jun-2006' },
    { title: 'Hamlet', genre: 'Drama', isbn_number: '12345', publish_date: '01-Jun-2007' }]

books.each do |b|
    Book.create!(b)
end