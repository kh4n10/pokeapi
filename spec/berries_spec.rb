require "httparty"
require "pokeapi"
require "rspec"

describe "Pokeapi" do
    

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

  describe "When given a resouce and no ID" do
      context "Return the resouce list" do
        it "Returns code  and gives the ok message(200)" do
          expect(Pokeapi.get_the_resource("berry").code).to eql(200)
        end

        it "Returns the resouce list as a Hash" do
          expect(Pokeapi.get_the_resource("berry").parsed_response).to be_instance_of Hash
        end

      end

    end

end
end