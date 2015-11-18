require 'spec_helper'
require './lib/bibliography/gem/bibliography.rb'

describe References do
  before :each do
    @bibliography = Books.new("(The Facets of Ruby)", "4 edition", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    @magazine_article = Magazine_Articles.new("PC World", "ISSN-7398473")
    @newspaper_article = Newspaper_Articles.new("Marca", "National")
    @electronic_document = Electronic_Document.new("www.marcosruby.es/pdfexport/lessons")
  end 
  
  describe "Jerarquía de Clases - Herencia" do
    
    it "Bibliography es una clase herencia de References" do
      expect(@bibliography.is_a? Books).to eq(true)
      expect(@bibliography.kind_of? References).to eq(true)
    end
    
    it "Magazine_Articles es una clase herencia de References" do
      expect(@magazine_article.is_a? Magazine_Articles).to eq(true)
      expect(@magazine_article.kind_of? References).to eq(true)
    end
    
    it "Newspaper_Articles es una clase herencia de References" do
      expect(@newspaper_article.is_a? Newspaper_Articles).to eq(true)
      expect(@newspaper_article.kind_of? References).to eq(true)
    end
    
    it "Electronic_Document es una clase herencia de References" do
      expect(@electronic_document.is_a? Electronic_Document).to eq(true)
      expect(@electronic_document.kind_of? References).to eq(true)
    end
    
    it "Probando el tipo" do
      expect(@electronic_document.respond_to? :issn).to eq(false)
    end
  end
end