require 'spec_helper'
require './lib/bibliography/gem/double_list.rb'
    
describe "Haciendo enumerable la lista doblemente enlazada" do
    it "Comprobrando el metodo all?" do
        @node = Node.new(nil,10,nil)
        @doublelist = Double_List.new(@node, @node)
        @doublelist_empty = Double_List.new(nil,nil)
        expect(@doublelist.all?).to eq(true)
        expect(@doublelist_empty.all?).to eq(false)
    end
    it "Comprobrando el metodo any?" do
        @node = Node.new(nil,10,nil)
        @doublelist = Double_List.new(@node, nil)
        @doublelist_empty = Double_List.new(nil,nil)
        expect(@doublelist.any?).to eq(true)
        expect(@doublelist_empty.any?).to eq(false)
    end 
end
