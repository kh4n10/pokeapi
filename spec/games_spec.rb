require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
	before(:all) do
		@pokedata = Pokeapi.new
	end

	describe "Games" do

		describe "Game generation" do
			context "When requesting a generation by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("generation", 1).code).to eql(200)
				end
			end
		end

		describe "Game pokedex" do
			context "When requesting a pokedex method by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("pokedex", 1).code).to eql(200)
				end
			end
		end

		describe "Game version" do
			context "When requesting a version method by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("version", 1).code).to eql(200)
				end
			end
		end

		describe "Game version group" do
			context "When requesting a version group by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("version-group", 1).code).to eql(200)
				end
			end
		end
	end
end