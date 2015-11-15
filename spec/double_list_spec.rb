require 'spec_helper'
require './lib/bibliography/gem/double_list.rb'

describe "Pruebas para una lista con nodos simples" do
    before :each do
        @doublelist = Double_List.new(nil,nil)
    end
    
    describe "Prueba para comprobar el funcionamiento de los nodos" do
        it "Existe un nodo con su previo, su valor y su siguiente" do
            @node = Node.new(nil,10,nil)
            expect(@node.prev).to eq(nil)
            expect(@node.value).to eq(10)
            expect(@node.next).to eq(nil)
        end
    end
end