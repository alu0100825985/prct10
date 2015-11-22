require 'spec_helper'
require './lib/bibliography/gem/double_list.rb'

describe "Pruebas para una lista con nodos simples" do
    before :each do
        @doublelist = Double_List.new(nil,nil)
    end
    
    describe "Haciendo enumerable la lista doblemente enlazada" do
        before :each do
            @doublelist.insert(10)
            @doublelist_empty = Double_List.new(nil,nil)
        end
        it "Comprobrando el metodo all?" do
            expect(@doublelist.all?).to eq(true)
            expect(@doublelist_empty.all?).to eq(false)
        end
    end
end
