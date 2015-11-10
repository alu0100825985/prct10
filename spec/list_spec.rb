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
        
        it "Existe una lista con varios nodos y su cabeza" do
            @node1 = Node.new(10,nil)
            @node2 = Node.new(20,nil)
            @node3 = Node.new(30,nil)
            @list.insert(@node1)
            @list.insert(@node2)
            @list.insert(@node3)
            expect(@list.empty?).to eq(false)
            expect(@list.head).to eq(@node3)
            expect(@node3.next).to eq(@node2)
            expect(@node2.next).to eq(@node1)
            expect(@node1.next).to eq(nil)
        end
    end
end

describe "Pruebas para una lista bibliográfica" do
    before :each do
        @bibliography_list = List.new(nil)
        Node = Struct.new(:value, :next)
        
        @reference1 = Node.new(Bibliography.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf;", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"]),nil)
        @reference2 = Node.new(Bibliography.new(["Scott Chacon"], "Pro Git 2009th Edition.", "(Pro).", "Apress;", "2009 edition", "(August 27, 2009).", ["ISBN-13: 978- 1430218333.", "ISBN-10: 1430218339."]),nil)
        @reference3 = Node.new(Bibliography.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language.", 0, "O’Reilly Media;", "1 edition", "(February 4, 2008).", ["ISBN-10: 0596516177.", "ISBN-13: 978-0596516178."]),nil)
        @reference4 = Node.new(Bibliography.new(["David Chelimsky", "Dave Astels", "Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy."],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "(The Facets of Ruby).", "Pragmatic Bookshelf;", "1 edition", "(December 25, 2010).", ["ISBN-10: 1934356379.", "ISBN-13: 978-1934356371."]),nil)
        @reference5 = Node.new(Bibliography.new(["Richard E."], "Silverman Git Pocket Guide", 0, "O’Reilly Media;", "1 edition", "(August 2, 2013).", ["ISBN-10: 1449325866.", "ISBN-13: 978-1449325862."]),nil)
    
        @bibliography_list.insert(@reference1)
        @bibliography_list.insert(@reference2)
        @bibliography_list.insert(@reference3)
        @bibliography_list.insert(@reference4)
        @bibliography_list.insert(@reference5)
    end
    
    it "Existe una lista bibliográfica" do
        expect(@bibliography_list.empty?).to eq(false)
    end
    
    it "Existe una referencia de la lista que tiene como autor a Richard E." do
        expect(@bibliography_list.extract.next).to eq(@reference4)
    end
end