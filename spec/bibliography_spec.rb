require 'spec_helper'
require './lib/bibliography/gem/bibliography.rb'

describe References do
  before :each do
    @reference = References.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide", "Pragmatic Bookshelf", "July 7, 2013")
    @bibliography = Bibliography.new("(The Facets of Ruby)", "4 edition", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    @magazine_article = Magazine_Articles.new("PC World", "ISSN-7398473")
    @newspaper_article = Newspaper_Articles.new("Marca", "National")
    @electronic_document = Electronic_Document.new("www.marcosruby.es/pdfexport/lessons")
  end 
  
  describe "Jerarquía de Clases - Herencia" do
    
    it "Bibliography es una clase herencia de References" do
      expect(@bibliography.is_a? References::Bibliography).to eq(true)
    end
    
    it "Magazine_Articles es una clase herencia de References" do
      expect(@magazine_article.is_a? References::Magazine_Articles).to eq(true)
    end
  end
end