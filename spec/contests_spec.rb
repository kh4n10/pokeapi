require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  before(:all) do
    @a_type = Pokeapi.get_the("contest-type", 1)
    @an_effect = Pokeapi.get_the("contest-effect", 1)
    @a_super_effect = Pokeapi.get_the("super-contest-effect", 1)
  end

  describe "In the contest-type resource" do
    context "when requesting a type" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_type.code).to eql(200)
      end
    end
  end

  describe "In the contest-effect resource" do
    context "when requesting an effect" do
      it "returns response code 200 to say everything is okay" do
        expect(@an_effect.code).to eql(200)
      end
    end
  end

  describe "In the super-contest-effect resource" do
    context "when requesting a super effect" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_super_effect.code).to eql(200)
      end
    end
  end
end
