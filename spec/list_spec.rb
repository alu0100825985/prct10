require 'spec_helper'
require './lib/bibliography/gem/bibliography.rb'
require './lib/bibliography/gem/list.rb'

describe "Pruebas para una lista con nodos simples" do
    before :each do
        @list = List.new(nil)
        Node = Struct.new(:value, :next)
    end
    
    describe "Prueba para comprobar el funcionamiento de los nodos" do
        it "Existe un nodo con su valor y su siguiente" do
            @node = Node.new(10,nil)
            @node.value.should eq(10)
            @node.next.should eq(nil)
        end
    end
        
    describe "Pruebas para comprobar el funcionamiento de la lista" do
        it "Existe una lista y está vacía" do
            expect(@list.empty?).to eq(true)
        end
        
        it "Se puede insertar un elemento en la lista" do
            @node = Node.new(10,nil)
            @list.insert(@node)
            expect(@list.head).to eq(@node)
        end
        
        it "Se puede insertar varios elementos en la lista" do
            @node1 = Node.new(10,nil)
            @node2 = Node.new(20,nil)
            @list.insert(@node1)
            @list.insert(@node2)
            expect(@list.head).to eq(@node2)
            expect(@node2.next).to eq(@node1)
        end
        
        it "Se puede extraer un elemento de la lista" do
            @node = Node.new(10,nil)
            @list.insert(@node)
            @list.extract
            expect(@list.empty?).to eq(true)
        end
        
        it "Se puede extraer varios elementos de la lista" do
            @node1 = Node.new(10,nil)
            @node2 = Node.new(20,nil)
            @list.insert(@node1)
            @list.insert(@node2)
            @list.extract
            @list.extract
            expect(@list.empty?).to eq(true)
        end
    end
end