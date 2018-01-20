class Book < ActiveRecord::Base
    def self.all_genres ; %w[Science_Fiction Drama Action_And_Adventure Romance Mystery Horror] ; end #  shortcut: array of strings
end