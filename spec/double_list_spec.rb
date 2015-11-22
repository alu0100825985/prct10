require 'spec_helper'
require './lib/bibliography/gem/double_list.rb'
    
describe Double_List do
    before :each do 
        @doublelist = Double_List.new(nil,nil)
    end
    
    describe "Haciendo enumerable la lista doblemente enlazada" do
        
        it "Comprobando el método all?" do
            @node = Node.new(nil,10,nil)
            @doublelist_all = Double_List.new(@node, @node)
            @doublelist_empty = Double_List.new(nil,nil)
            expect(@doublelist_all.all?).to eq(true)
            expect(@doublelist_empty.all?).to eq(false)
        end
        it "Comprobando el método any?" do
            @node = Node.new(nil,10,nil)
            @doublelist_any = Double_List.new(@node, nil)
            @doublelist_empty = Double_List.new(nil,nil)
            expect(@doublelist_any.any?).to eq(true)
            expect(@doublelist_empty.any?).to eq(false)
        end 
        it "Comprobando el método count" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            expect(@doublelist.head.value).to eq(20)
            expect(@doublelist.tail.value).to eq(10)
            expect(@doublelist.count).to eq(2)
        end
        it "Comprobando el método detect" do
            @doublelist.insert([1, 2, 3, 4, 5])
            expect(@doublelist.head.value.detect {|x| x == 3}).to eq(3)
            expect(@doublelist.head.value.find {|x| x == 5}).to eq(5)
            expect(@doublelist.head.value.detect {|x| x.between?(2,5)}).to eq(2)
        end
        it "Comprobando el método drop" do
            @doublelist.insert([1, 2, 3, 4, 5])
            expect(@doublelist.head.value.drop(3)).to eq([4, 5])
        end
        it "Comprobando el método max" do
            @doublelist.insert([1, 2, 3, 4, 5])
            expect(@doublelist.head.value.max).to eq(5)
        end
        it "Comprobando el método min" do
            @doublelist.insert([1, 2, 3, 4, 5])
            expect(@doublelist.head.value.min).to eq(1)
        end
    end
end
