require 'spec_helper'
require './lib/bibliography/gem/double_list.rb'
    
describe Double_List do
    before :each do 
        @doublelist = Double_List.new(nil,nil)
        @doublelist_alternative = Double_List.new(nil,nil)
    end
    
    describe "Haciendo enumerable la lista doblemente enlazada" do
        
        it "Comprobando el método all?" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            @doublelist.insert(30)
            @doublelist_alternative.insert(10)
            @doublelist_alternative.insert(nil)
            @doublelist_alternative.insert(30)
            expect(@doublelist.all?).to eq(true)
            expect(@doublelist_alternative.all?).to eq(false)
        end
        it "Comprobando el método any?" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            @doublelist.insert(nil)
            @doublelist_alternative.insert(nil)
            @doublelist_alternative.insert(nil)
            @doublelist_alternative.insert(nil)
            expect(@doublelist.any?).to eq(true)
            expect(@doublelist_alternative.any?).to eq(false)
        end 
        it "Comprobando el método count" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            @doublelist.insert(30)
            @doublelist.insert(40)
            expect(@doublelist.count).to eq(4)
        end
        it "Comprobando el método detect" do
            @doublelist.insert(40)
            @doublelist.insert(30)
            @doublelist.insert(20)
            @doublelist.insert(10)
            expect(@doublelist.detect {|x| x == 20}).to eq(20)
            expect(@doublelist.find {|x| x == 40}).to eq(40)
            expect(@doublelist.detect {|x| x.between?(20,40)}).to eq(20)
        end
        it "Comprobando el método drop" do
            @doublelist.insert(40)
            @doublelist.insert(30)
            @doublelist.insert(20)
            @doublelist.insert(10)
            expect(@doublelist.drop(2)).to eq([30, 40])
        end
        it "Comprobando el método max" do
            @doublelist.insert(5)
            @doublelist.insert(4)
            @doublelist.insert(3)
            @doublelist.insert(2)
            @doublelist.insert(1)
            expect(@doublelist.max).to eq(5)
        end
        it "Comprobando el método min" do
            @doublelist.insert(5)
            @doublelist.insert(4)
            @doublelist.insert(3)
            @doublelist.insert(2)
            @doublelist.insert(1)
            expect(@doublelist.min).to eq(1)
        end
        it "Comprobando el método sort" do
            @doublelist.insert(4)
            @doublelist.insert(2)
            @doublelist.insert(5)
            @doublelist.insert(1)
            @doublelist.insert(3)
            expect(@doublelist.sort).to eq([1, 2, 3, 4, 5])
            expect(@doublelist.sort.reverse).to eq([5, 4, 3, 2, 1])
        end
        it "Comprobando el método first" do
            @doublelist.insert(5)
            @doublelist.insert(4)
            @doublelist.insert(3)
            @doublelist.insert(2)
            @doublelist.insert(1)
            expect(@doublelist.first).to eq(1)
        end
        it "Comprobando el método member?" do
            @doublelist.insert(5)
            @doublelist.insert(4)
            @doublelist.insert(3)
            @doublelist.insert(2)
            @doublelist.insert(1)
            expect(@doublelist.member?(3)).to eq(true)
        end
    end
end 
