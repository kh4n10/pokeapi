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
	      it "returns encounter method 1" do
	        expect(Pokeapi.get_the("encounter-method", 1)["id"]).to eql(1)
	        expect(Pokeapi.get_the("encounter-method", 1)["name"]).to eql("walk")
	      end
			end
			context "When requesting encounter method with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("encounter-method").code).to eql(200)
				end
			end
		end

		describe "Encounter condition" do
			context "When requesting an encounter condition by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("encounter-condition", 1).code).to eql(200)
				end
	      it "returns encounter condition 1" do
	        expect(Pokeapi.get_the("encounter-condition", 1)["id"]).to eql(1)
	        expect(Pokeapi.get_the("encounter-condition", 1)["name"]).to eql("swarm")
	      end
			end
			context "When requesting encounter condition with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("encounter-condition").code).to eql(200)
				end
			end
		end

		describe "Encounter condition value" do
			context "When requesting an encounter condition value by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("encounter-condition-value", 1).code).to eql(200)
				end
	      it "returns encounter value 1" do
	        expect(Pokeapi.get_the("encounter-condition-value", 1)["id"]).to eql(1)
	        expect(Pokeapi.get_the("encounter-condition-value", 1)["name"]).to eql("swarm-yes")
	      end
			end
			context "When requesting encounter condition value with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("encounter-condition-value").code).to eql(200)
				end
			end
		end
	end
end