require 'spec_helper'
require './lib/bibliography/gem/bibliography.rb'

describe References do
  before :each do
    @references = References.new("Ricky Seawton", "Ruby Instances", "Santillanic", "17 July, 2009", "323")
  end
  
  describe "Comparaciones entre referencias basadas en el número de páginas" do
    before :each do
      @references1 = References.new("Stan Rebick", "Ruby Modules", "Editorik", "23 January, 2015", "264")
      @references2 = References.new("Andy Coleman", "Ruby World", "Panemo", "15 April, 2010", "323")
      @references3 = References.new("Rubok Anthy", "Ruby Computer", "Carco", "12 May, 1995", "517")
    end
    
    it "La referencia de Stan Rebick es menor que la referencia de Ricky Seawton" do
      expect(@references1 < @references).to eq(true)
    end
    
    it "La referencia de Andy Coleman es menor o igual que la referencia de Ricky Seawton" do
      expect(@references2 <= @references).to eq(true)
    end
    
    it "La referencia de Andy Coleman es igual que la referencia de Ricky Seawton" do
      expect(@references2 == @references).to eq(true)
    end
    
    it "La referencia de Andy Coleman es mayor o igual que la referencia de Ricky Seawton" do
      expect(@references2 >= @references).to eq(true)
    end
    
    it "La referencia de Rubok Anthy es mayor que la referencia de Ricky Seawton" do
      expect(@references3 > @references).to eq(true)
    end
    
    it "La referencia de Rubok Anthy no es igual que la referencia de Ricky Seawton" do
      expect(@references3 == @references).to eq(false)
    end
  end
  
end