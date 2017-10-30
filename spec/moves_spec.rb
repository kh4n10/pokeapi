require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  context "given a request" do
    it "responds" do
      expect(Pokeapi.get_the("move",1).code).to eql(200)
      expect(Pokeapi.get_the("move-ailment",1).code).to eql(200)
      expect(Pokeapi.get_the("move-battle-style",1).code).to eql(200)
      expect(Pokeapi.get_the("move-category",1).code).to eql(200)
      expect(Pokeapi.get_the("move-damage-class",1).code).to eql(200)
      expect(Pokeapi.get_the("move-learn-method",1).code).to eql(200)
      expect(Pokeapi.get_the("move-target",1).code).to eql(200)
    end
  end


end