require "httparty"
require "pokeapi"
require "rspec"

describe "Pokeapi" do

	describe "When the locations resource has been selected" do
		context "A location id has been inputted" do

			it "Returns the code and gives the code to say its okay" do
				expect(Pokeapi.get_the("location", 1).code).to eql(200)
			end

			it "Returns the data as a JSON file" do
				expect(Pokeapi.get_the("location", 1).parsed_response).to be_instance_of Hash
			end

      it "When given a resouce and no ID returns code  and gives the ok message(200)" do
        expect(Pokeapi.get_the_resource("location").code).to eql(200)
      end
		end

		context "A location-area id has been inputted" do
			it "Returns the code and gives the code to say its okay" do
				expect(Pokeapi.get_the("location-area", 1).code).to eql(200)
			end

			it "Returns the data as a JSON file" do
				expect(Pokeapi.get_the("location-area", 1).parsed_response).to be_instance_of Hash
			end

      it "When given a resouce and no ID returns code  and gives the ok message(200)" do
        expect(Pokeapi.get_the_resource("location-area").code).to eql(200)
      end
      
		end

		context "A pal-park-area id has been inputted" do
			it "Returns the code and gives the code to say its okay" do
				expect(Pokeapi.get_the("pal-park-area", 1).code).to eql(200)
			end

			it "Returns the data as a JSON file" do
				expect(Pokeapi.get_the("pal-park-area", 1).parsed_response).to be_instance_of Hash
			end

      it "When given a resouce and no ID returns code  and gives the ok message(200)" do
        expect(Pokeapi.get_the_resource("pal-park-area").code).to eql(200)
      end

      it "for a given ID it returns the correct data, in this instance the name" do
        expect(Pokeapi.get_the("pal-park-area", 3)["pokemon_encounters"][2]["pokemon_species"]["name"]).to be_instance_of String
      end
		end

		context "A region id has been inputted" do
			it "Returns the code and gives the code to say its okay" do
				expect(Pokeapi.get_the("region", 1).code).to eql(200)
			end

			it "Returns the data as a JSON file" do
				expect(Pokeapi.get_the("region", 1).parsed_response).to be_instance_of Hash
			end

      it "When given a resouce and no ID returns code  and gives the ok message(200)" do
        expect(Pokeapi.get_the_resource("region").code).to eql(200)
      end

      it "for a given ID it returns the correct data, in this instance the name" do
        expect(Pokeapi.get_the("region", 1)["main_generation"]["name"]).to be_instance_of String
      end

    
		end

  end
end