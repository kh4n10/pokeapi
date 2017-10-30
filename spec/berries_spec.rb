require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  before(:all) do
    @a_berry = Pokeapi.get_the("berry", 1)
  end

  describe "In the berries resource" do
    context "when requesting a berry" do
      it "returns code 200 to say everything is okay" do
        expect(@a_berry.code).to eql(200)
      end
    end
  end
end