require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  describe "Machines" do
    context "given a request" do
      it "responds with 200; okay" do
        expect(Pokeapi.get_the("machine",1).code).to eql(200)
      end      
      it "returns data with id 1" do
        expect(Pokeapi.get_the("machine", 1)['id']).to eql(1)
      end
    end
    context "given a list request" do
      it "responds with 200; okay" do 
        expect(Pokeapi.get_the_resource("machine").code).to eql(200)
      end
    end
  end
end