require "httparty"
require "pokeapi"
require "rspec"
    
describe Pokeapi do
  before(:all) do
    @berries = Pokeapi.get_the_resource("berry")
    @berries_firmnesses = Pokeapi.get_the_resource("berry-firmness")
    @berries_flavors = Pokeapi.get_the_resource("berry-flavor")
    @berries = Pokeapi.get_the_resource("berry")
    @a_berry = Pokeapi.get_the("berry", 1)
    @a_firmness = Pokeapi.get_the("berry-firmness", 1)
    @a_flavor = Pokeapi.get_the("berry-flavor", 1)
  end

  describe "In the berries resource" do
    context "when requesting one berry" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_berry.code).to eql(200)
      end
      it "returns a berry" do
        expect(@a_berry["id"]).to eql(1)
        expect(@a_berry["name"]).to eql("cheri")
      end
    end
    context "when requesting the resource list" do
      it "returns response code and gives the ok message(200)" do
        expect(@berries.code).to eql(200)
      end
      it "Returns the resouce list as a Hash" do
        expect(@berries.parsed_response).to be_instance_of Hash
      end
    end
  end

  describe "In the berry-firmness resource" do
    context "when requesting a firmness" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_firmness.code).to eql(200)
      end
      it "returns a firmness" do
        expect(@a_firmness["id"]).to eql(1)
        expect(@a_firmness["name"]).to eql("very-soft")
      end
    end
    context "when requesting the resource list" do
      it "returns response code and gives the ok message(200)" do
        expect(@berries_firmnesses.code).to eql(200)
      end
      it "Returns the resouce list as a Hash" do
        expect(@berries_firmnesses.parsed_response).to be_instance_of Hash
      end
    end
  end

  describe "In the berry-flavor resource" do
    context "when requesting a flavor" do
      it "returns response code 200 to say everything is okay" do
        expect(@a_flavor.code).to eql(200)
      end
      it "returns a flavor" do
        expect(@a_flavor["id"]).to eql(1)
        expect(@a_flavor["name"]).to eql("spicy")
      end
    end
    context "when requesting the resource list" do
      it "returns response code and gives the ok message(200)" do
        expect(@berries_flavors.code).to eql(200)
      end
      it "Returns the resouce list as a Hash in JSON format" do
        expect(@berries_flavors.parsed_response).to be_instance_of Hash
      end
    end
  end
end