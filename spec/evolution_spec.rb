require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do

	describe "Evolutions" do

		describe "Evolution chain" do
			context "When requesting an evolution chain by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("evolution-chain", 1).code).to eql(200)
				end
			end
			context "When requesting evolution chain with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("evolution-chain").code).to eql(200)
				end
			end
		end

		describe "Evolution trigger" do
			context "When requesting an evolution trigger by id 1" do
				it "returns response code 200" do
					expect(Pokeapi.get_the("evolution-trigger", 1).code).to eql(200)
				end
			end
			context "When requesting evolution trigger with no id" do
				it "returns response code 200" do
					expect(Pokeapi.get_the_resource("evolution-trigger").code).to eql(200)
				end
			end
		end
	end
end