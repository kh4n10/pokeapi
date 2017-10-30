require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  before(:all) do
    @a_type = Pokeapi.get_the("contest-type", 1)
    @an_effect = Pokeapi.get_the("contest-effect", 1)
    @a_super_effect = Pokeapi.get_the("super-contest-effect", 1)
    @contests_types = Pokeapi.get_the_resource("contest-type")
    @contests_effects = Pokeapi.get_the_resource("contest-effect")
    @super_contests_effects = Pokeapi.get_the_resource("super-contest-effect")
  end

  describe "In the contest-type resource" do
    context "when requesting a type" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_type.code).to eql(200)
      end
    end
    context "when requesting the resource list" do
      it "returns response code and gives the ok message(200)" do
        expect(@contests_types.code).to eql(200)
      end
      it "Returns the resouce list as a Hash in JSON format" do
        expect(@contests_types.parsed_response).to be_instance_of Hash
      end
    end
  end

  describe "In the contest-effect resource" do
    context "when requesting an effect" do
      it "returns response code 200 to say everything is okay" do
        expect(@an_effect.code).to eql(200)
      end
    end
    context "when requesting the resource list" do
      it "returns response code and gives the ok message(200)" do
        expect(@contests_effects.code).to eql(200)
      end
      it "Returns the resouce list as a Hash in JSON format" do
        expect(@contests_effects.parsed_response).to be_instance_of Hash
      end
    end
  end

  describe "In the super-contest-effect resource" do
    context "when requesting a super effect" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_super_effect.code).to eql(200)
      end
    end
    context "when requesting the resource list" do
      it "returns response code and gives the ok message(200)" do
        expect(@super_contests_effects.code).to eql(200)
      end
      it "Returns the resouce list as a Hash in JSON format" do
        expect(@super_contests_effects.parsed_response).to be_instance_of Hash
      end
    end
  end
end
