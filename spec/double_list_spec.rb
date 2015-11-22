require 'spec_helper'
require './lib/bibliography/gem/double_list.rb'
    
describe Double_List do
    before :each do 
        @doublelist = Double_List.new(nil,nil)
    end
    
    describe "Haciendo enumerable la lista doblemente enlazada" do
        
        it "Comprobrando el metodo all?" do
            @node = Node.new(nil,10,nil)
            @doublelist_all = Double_List.new(@node, @node)
            @doublelist_empty = Double_List.new(nil,nil)
            expect(@doublelist_all.all?).to eq(true)
            expect(@doublelist_empty.all?).to eq(false)
        end
        it "Comprobrando el metodo any?" do
            @node = Node.new(nil,10,nil)
            @doublelist_any = Double_List.new(@node, nil)
            @doublelist_empty = Double_List.new(nil,nil)
            expect(@doublelist_any.any?).to eq(true)
            expect(@doublelist_empty.any?).to eq(false)
        end 
        it "Comprobrando el metodo count" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            expect(@doublelist.head.value).to eq(20)
            expect(@doublelist.tail.value).to eq(10)
            expect(@doublelist.count).to eq(2)
        end
    end
end
