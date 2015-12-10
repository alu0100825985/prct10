require 'spec_helper'
require './lib/bibliography/gem/references_apa.rb'
require './lib/bibliography/gem/bibliography.rb'

describe References_APA do
    before :all do 
        @book = Books.new(["Remon Clark", "Mary Dawson"], "Ruby Computer", "Rered", "17 July, 2009", 7, "56484FG84")
		@article = Articles.new(["Daymon Patric", "Spenson Sercuc"], "Ruby Days", "Yundo", "23 January, 2015", "Ruby Initial", 78, 4, "8734GHF93")
		@newspaper_article = Newspaper_Articles.new(["Patrick Kluivert", "Paul Scholes"], "Ruby Future", "Parak", "15 April, 2010", 130)
		@electronic_document = Electronic_Document.new(["Seanwe Houston", "Raimond Sullivan"], "Ruby 23", "University", "12 May, 1995", 3, "electronic", "http://www.ruby23.com/project/index", "5 December, 2015")
    end
    
    it "Se puede insertar las diferentes referencias" do
        @r_apa = References_APA.new()
        @r_apa.insert_reference(@book)
        @r_apa.insert_reference(@article)
        @r_apa.insert_reference(@newspaper_article)
        @r_apa.insert_reference(@electronic_document)
    end
    
    it "El libro se inserta bajo el formato APA" do
        @r_apa = References_APA.new()
        @r_apa.insert_reference(@book)
        expect(@r_apa.to_s).to eq("Clark, R. & Dawson, M. (17 July, 2009). Ruby Computer (7) (56484FG84). Rered.")
    end
    
    it "El articulo se inserta bajo el formato APA" do
        @r_apa = References_APA.new()
        @r_apa.insert_reference(@article)
        expect(@r_apa.to_s).to eq("Patric, D. & Sercuc, S. (23 January, 2015). Ruby Days, Ruby Initial (78) (4) (8734GHF93). Yundo.")
    end
    
    it "El articulo de periodico se inserta bajo el formato APA" do
        @r_apa = References_APA.new()
        @r_apa.insert_reference(@newspaper_article)
        expect(@r_apa.to_s).to eq("Kluivert, P. & Scholes, P. (15 April, 2010). Ruby Future. Parak, pp. 130.")
    end
    
    it "El documento electronico de periodico se inserta bajo el formato APA" do
        @r_apa = References_APA.new()
        @r_apa.insert_reference(@electronic_document)
        expect(@r_apa.to_s).to eq("Houston, S. & Sullivan, R. (12 May, 1995). Ruby 23 (3), [electronic]. University. Disponible en: http://www.ruby23.com/project/index [5 December, 2015].")
    end
end