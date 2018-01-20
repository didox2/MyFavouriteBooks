class BooksController < ApplicationController
 
 def index
  @books = Book.all
 end
 
 def show
  id = params[:id] # retrieve movie ID from URI route
  @book = Book.find(id) # look up movie by unique ID
  # will render app/views/books/show.html.haml by default
 end
 
end