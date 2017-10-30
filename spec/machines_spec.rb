require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  context "given a request" do
    it "responds" do
      expect(Pokeapi.get_the("machine",1).code).to eql(200)
    end
  end


end