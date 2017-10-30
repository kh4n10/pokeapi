require "httparty"
require "pokeapi"
require "rspec"


describe Pokeapi do
  context "given a request" do
    it "responds" do
      expect(Pokeapi.get_the("item",1).code).to eql(200)
      expect(Pokeapi.get_the("item-attribute",1).code).to eql(200)
      expect(Pokeapi.get_the("item-category",1).code).to eql(200)
      expect(Pokeapi.get_the("item-fling-effect",1).code).to eql(200)
      expect(Pokeapi.get_the("item-pocket",1).code).to eql(200)
    end
  end


end