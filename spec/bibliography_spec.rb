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
    end
    
    it "La referencia de Stan Rebick tiene menos páginas que la referencia de Ricky Seawton" do
      expect(@references1 < @references).to eq(true)
    end
    
    it "La referencia de Andy Coleman tiene menos o igual número de páginas que la referencia de Ricky Seawton" do
      expect(@references2 <= @references).to eq(true)
    end
  end
  
end