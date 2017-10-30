require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  before(:all) do
    @a_berry = Pokeapi.get_the("berry", 1)
    @a_firmness = Pokeapi.get_the("berry-firmness", 1)
    @a_flavor = Pokeapi.get_the("berry-flavor", 1)
  end

  describe "In the berries resource" do
    context "when requesting a berry" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_berry.code).to eql(200)
      end
    end
  end

  describe "In the berry-firmness resource" do
    context "when requesting a firmness" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_firmness.code).to eql(200)
      end
    end
  end

  describe "In the berry-flavor resource" do
    context "when requesting a flavor" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_flavor.code).to eql(200)
      end
    end
  end
end