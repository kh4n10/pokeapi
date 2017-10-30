require "httparty"
require "pokeapi"
require "rspec"

describe "Pokeapi" do


  describe "When the languages resource has been selected" do
    context "A language id has been inputted" do

      it "Returns the code and gives the code to say its okay" do
        expect(Pokeapi.get_the("language", 1).code).to eql(200)
      end

      it "Returns the data as a JSON file" do
        expect(Pokeapi.get_the("language", 1).parsed_response).to be_instance_of Hash
      end

      it "for a given ID it returns the correct data, in this instance the name" do
        expect(Pokeapi.get_the("language", 1)["iso639"]).to be_instance_of String
      end
    end
  end


  describe "When given a resouce and no ID" do
    context "Return the resouce list" do
      it "Returns code  and gives the ok message(200)" do
        expect(Pokeapi.get_the_resource("language").code).to eql(200)
      end

      it "Returns the resouce list as a JSON file" do
        expect(Pokeapi.get_the_resource("language").parsed_response).to be_instance_of Hash
      end

    end
    
  end
end