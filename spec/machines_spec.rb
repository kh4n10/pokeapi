require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  
  describe "Machines" do
    context "given a request" do
      it "responds with 200; okay" do
        expect(Pokeapi.get_the("machine",1).code).to eql(200)
      end
    end
  
    context "given a list request" do
      it "responds with 200; okay" do 
        expect(Pokeapi.get_the_resource("item").code).to eql(200)
      end
    end

    
    
  end
end