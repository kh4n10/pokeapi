require "httparty"
require "pokeapi"
require "rspec"

describe "Pokeapi" do

    describe "When given a resouce and no ID" do
      context "Return the resouce list" do
        it "Returns code  and gives the ok message(200)" do
          expect(Pokeapi.get_the_resource("location").code).to eql(200)
        end

        it "Returns the resouce list as a Hash" do
          expect(Pokeapi.get_the_resource("location").parsed_response).to be_instance_of Hash
        end

      end

    end

end