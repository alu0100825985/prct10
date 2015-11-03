require 'spec_helper'
require 'bibliography'

describe Bibliography do
  before :each do
    @p1 = Bibliography.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
  end 
    
  describe "Debe existir uno o más autores" do
    it "Existen uno o más autores" do
      @p1.author.should eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"]) 
    end
  end
  
  describe "Debe existir un título" do
    it "Existe un título" do
      @p1.title.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide") 
    end
  end
  
  describe "Debe existir o no una serie" do
    it "Existe una serie" do
      @p1.series.should eq("(The Facets of Ruby)") 
    end
  end
  
  describe "Debe existir una editorial" do
    it "Existe una editorial" do
      @p1.editorial.should eq("Pragmatic Bookshelf") 
    end
  end
  
  describe "Debe existir un número de edición" do
    it "Existe un número de edición" do
      @p1.edition_number.should eq("4 edition") 
    end
  end
  
  describe "Debe existir una fecha de publicación" do
    it "Existe una fecha de publicación" do
      @p1.date.should eq("July 7, 2013") 
    end
  end
  
  describe "Debe existir uno o más números ISBN" do
    it "Existe uno o mas números ISBN" do
      @p1.isbn.should eq(["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"]) 
    end
  end
  
  describe "Debe existir un método para obtener el listado de autores" do
    it "Existe un método para obtener el listado de autores" do
      @p1.get_author().should eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"]) 
    end
  end
  
  describe "Debe existir un método para obtener el título" do
    it "Existe un método para obtener el título" do
      @p1.get_title().should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide") 
    end
  end
  
  describe "Debe existir un método para obtener la serie" do
    it "Existe un método para obtener la serie" do
      @p1.get_series().should eq("(The Facets of Ruby)") 
    end
  end
  
  describe "Debe existir un método para obtener la editorial" do
    it "Existe un método para obtener la editorial" do
      @p1.get_editorial().should eq("Pragmatic Bookshelf") 
    end
  end
  
  describe "Debe existir un método para obtener el número de edición" do
    it "Existe un método para obtener el número de edición" do
      @p1.get_edition_number().should eq("4 edition") 
    end
  end
  
  describe "Debe existir un método para obtener la fecha de publicación" do
    it "Existe un método para obtener la fecha de publicación" do
      @p1.get_date().should eq("July 7, 2013") 
    end
  end
  
  describe "Debe existir un método para obtener el listado de ISBN" do
    it "Existe un método para obtener el listado de ISBN" do
      @p1.get_isbn().should eq(["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"]) 
    end
  end
  
end