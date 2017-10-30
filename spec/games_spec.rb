require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do

	describe "Games" do

		describe "Game generation" do
			context "When requesting a generation by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("generation", 1).code).to eql(200)
				end
			end
			context "When requesting generation with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("generation").code).to eql(200)
				end
			end
		end

		describe "Game pokedex" do
			context "When requesting a pokedex by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("pokedex", 1).code).to eql(200)
				end
			end
			context "When requesting pokedex with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("pokedex").code).to eql(200)
				end
			end
		end

		describe "Game version" do
			context "When requesting a version by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("version", 1).code).to eql(200)
				end
			end
			context "When requesting version with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("version").code).to eql(200)
				end
			end
		end

		describe "Game version group" do
			context "When requesting a version group by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("version-group", 1).code).to eql(200)
				end
			end
			context "When requesting version group with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("version-group").code).to eql(200)
				end
			end
		end
	end
end