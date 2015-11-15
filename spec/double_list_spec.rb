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
    
    describe "Pruebas para comprobar el funcionamiento de la lista" do
        it "Existe una lista y está vacía" do
            expect(@doublelist.empty?).to eq(true)
        end

        it "Se puede insertar un elemento en la lista" do
            @node = Node.new(nil,10,nil)
            @doublelist.insert(@node)
            expect(@doublelist.head).to eq(@node)
        end
    end
end