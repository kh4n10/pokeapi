require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do
  before(:all) do
    @a_contest = Pokeapi.get_the("contest-type", 1)
  end

  describe "In the contests resource" do
    context "when requesting a contest-type" do
      it "returns code 200 to say everything is okay" do
        expect(@a_contest.code).to eql(200)
      end
    end
  end
end
