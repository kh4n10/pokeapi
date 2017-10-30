require "httparty"
require "pokeapi"
require "rspec"


describe Pokeapi do
  describe "Items" do
    context "when requesting an item" do
      it "returns the correct response code of 200; ok" do
        expect(Pokeapi.get_the("item",1).code).to eql(200)
        expect(Pokeapi.get_the("item-attribute",1).code).to eql(200)
        expect(Pokeapi.get_the("item-category",1).code).to eql(200)
        expect(Pokeapi.get_the("item-fling-effect",1).code).to eql(200)
        expect(Pokeapi.get_the("item-pocket",1).code).to eql(200)
      end 
    end
  
    context "given a list request" do
      it "responds" do 
        expect(Pokeapi.get_the_resource("item").code).to eql(200)
        expect(Pokeapi.get_the_resource("item-attribute").code).to eql(200)
        expect(Pokeapi.get_the_resource("item-category").code).to eql(200)
        expect(Pokeapi.get_the_resource("item-fling-effect").code).to eql(200)
        expect(Pokeapi.get_the_resource("item-pocket").code).to eql(200)
      end
    end
  end
end