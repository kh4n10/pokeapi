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
		end

		context "A location-area id has been inputted" do
			it "Returns the code and gives the code to say its okay" do
				expect(Pokeapi.get_the("location-area", 1).code).to eql(200)
			end

			it "Returns the data as a JSON file" do
				expect(Pokeapi.get_the("location-area", 1).parsed_response).to be_instance_of Hash
			end
		end

		context "A pal-park-area id has been inputted" do
			it "Returns the code and gives the code to say its okay" do
				expect(Pokeapi.get_the("pal-park-area", 1).code).to eql(200)
			end

			it "Returns the data as a JSON file" do
				expect(Pokeapi.get_the("pal-park-area", 1).parsed_response).to be_instance_of Hash
			end
		end

		context "A region id has been inputted" do
			it "Returns the code and gives the code to say its okay" do
				expect(Pokeapi.get_the("region", 1).code).to eql(200)
			end

			it "Returns the data as a JSON file" do
				expect(Pokeapi.get_the("region", 1).parsed_response).to be_instance_of Hash
			end
		end
	end

# Lukes work for no ID
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