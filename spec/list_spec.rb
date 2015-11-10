require 'spec_helper'
require './lib/bibliography/gem/bibliography.rb'
require './lib/bibliography/gem/list.rb'

describe List do
    before :each do
        @list = List.new(nil)
        Node = Struct.new(:value, :next)
    end
    
    describe "Pruebas para comprobar el funcionamiento de los nodos" do
        it "Existe un nodo de la lista con su valor y su siguiente" do
            @node = Node.new(10,nil)
            @node.value.should eq(10)
            @node.next.should eq(nil)
        end
    end
        
    describe "Pruebas para comprobar el funcionamiento de la lista" do
        it "Existe una lista y está vacía" do
            expect(@list.empty?).to eq(true)
        end
    end
end