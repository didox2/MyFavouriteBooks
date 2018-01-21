class Book < ActiveRecord::Base
    # add to app/models/Book.rb
    def self.all_genres ; %w[Fiction Drama Adventure Romance Mystery Horror] ; end # shortcut: array of strings
    
    validates :title, :presence => true
    validates :publish_date, :presence => true
    validate :published_1930_or_later # uses custom validator below
    validates :genre, :inclusion => {:in => Book.all_genres},
      :unless => :grandfathered?
 
    def published_1930_or_later
      errors.add(:published_date, 'must be 1930 or later') if
        published_date && published_date < Date.parse('1 Jan 1930')
    end
 
    @@grandfathered_date = Date.parse('1 Nov 1968')
 
    def grandfathered?
      published_date && published_date < @@grandfathered_date
    end
    
    
    def self.similar_books(book)
      Book.where author: book.author
    end
end