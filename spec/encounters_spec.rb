require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do

	describe "Encounters" do

		describe "Encounter method" do
			context "When requesting an encounter method by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("encounter-method", 1).code).to eql(200)
				end
			end
		end

		describe "Encounter condition" do
			context "When requesting an encounter condition by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("encounter-condition", 1).code).to eql(200)
				end
			end
		end

		describe "Encounter condition value" do
			context "When requesting an encounter condition value by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("encounter-condition-value", 1).code).to eql(200)
				end
			end
		end
	end
end