require 'spec_helper'
require './lib/bibliography/gem/bibliography.rb'

describe References_APA do
    before :all do 
        @book = Book.new(["Remon Clark", "Mary Dawson"], "Ruby Computer", "Rered", "17 July, 2009", 7, ["56484FG84"])
		@article = Articles.new(["Daymon Patric", "Spenson Sercuc"], "Ruby Days", "Yundo", "23 January, 2015", "Paper")
		@newspaper_article = Newspaper_Articles.new(["Patrick Kluivert", "Paul Scholes"], "Editorik Ruby", "Parak", "15 April, 2010", "Paper", 130)
		@electronic_document = Electronic_Document.new(["Seanwe Houston", "Raymond Domenech", "Rui Costa"], "Ruby 23", "University", "12 May, 1995", "Electronic", "http://www.ruby23.com/ruicosta.com")
    end
end