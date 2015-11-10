require 'spec_helper'
require './lib/bibliography/gem/bibliography.rb'
require './lib/bibliography/gem/list.rb'

describe List do
    before :each do
        @list = List.new(nil)
    end
        
    describe "Pruebas para comprobar el funcionamiento de la lista" do
        it "Existe una lista y está vacía" do
            expect(@list.empty?).to eq(true)
        end
    end
end