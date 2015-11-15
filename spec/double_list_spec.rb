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
        
        it "Se puede insertar varios elementos en la lista" do
            @node1 = Node.new(nil,10,nil)
            @node2 = Node.new(nil,20,nil)
            @doublelist.insert(@node1)
            @doublelist.insert(@node2)
            expect(@doublelist.head).to eq(@node2)
            expect(@node2.next).to eq(@node1)
        end
        
        it "Se puede extraer un elemento de la lista" do
            @node = Node.new(nil,10,nil)
            @doublelist.insert(@node)
            @doublelist.extract
            expect(@doublelist.empty?).to eq(true)
        end
        
        it "Se puede extraer varios elementos de la lista" do
            @node1 = Node.new(nil,10,nil)
            @node2 = Node.new(nil,20,nil)
            @doublelist.insert(@node1)
            @doublelist.insert(@node2)
            @doublelist.extract
            @doublelist.extract
            expect(@doublelist.empty?).to eq(true)
        end
        
        it "Existe una lista con varios nodos, su cabeza y su cola" do
            @node1 = Node.new(nil,10,nil)
            @node2 = Node.new(nil,20,nil)
            @node3 = Node.new(nil,30,nil)
            @doublelist.insert(@node1)
            @doublelist.insert(@node2)
            @doublelist.insert(@node3)
            expect(@doublelist.empty?).to eq(false)
            expect(@doublelist.head).to eq(@node3)
            expect(@node3.next).to eq(@node2)
            expect(@node2.next).to eq(@node1)
            expect(@node1.next).to eq(nil)
            expect(@doublelist.tail).to eq (@node1)
        end
    end
end