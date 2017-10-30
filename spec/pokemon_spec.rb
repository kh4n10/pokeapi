require "httparty"
require "pokeapi"
require "rspec"



describe "Pokemon Api" do

  describe "Pokemon Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("pokemon", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon").code).to eql(200)
      end
    end
  end 

  describe "Ability Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("ability", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("ability").code).to eql(200)
      end
    end
  end 

  describe "characteristic Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("characteristic", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("characteristic").code).to eql(200)
      end
    end
  end 

  describe "egg-group Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("egg-group", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("egg-group").code).to eql(200)
      end
    end
  end 

  describe "gender Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("gender", 1).code).to eql(200)
      end
    end

    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("gender").code).to eql(200)
      end
    end
  end

  describe "growth-rate Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("growth-rate", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("growth-rate").code).to eql(200)
      end
    end
  end

  describe "nature Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("nature", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("nature").code).to eql(200)
      end
    end
  end

  describe "pokeathlon-stat Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("pokeathlon-stat", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokeathlon-stat").code).to eql(200)
      end
    end
  end

  describe "pokemon-color Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("pokemon-color", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-color").code).to eql(200)
      end
    end
  end

  describe "pokemon-form Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("pokemon-form", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-form").code).to eql(200)
      end
    end
  end

  describe "pokemon-habitat" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("pokemon-habitat", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-habitat").code).to eql(200)
      end
    end
  end

  describe "pokemon-shape Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("pokemon-shape", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-shape").code).to eql(200)
      end
    end
  end

  describe "pokemon-species Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("pokemon-species", 1).code).to eql(200)
      end
    end
    context "Given on ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-species").code).to eql(200)
      end
    end
  end

  describe "stat Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("stat", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("stat").code).to eql(200)
      end
    end
  end


  describe "type Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the("type", 1).code).to eql(200)
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("type").code).to eql(200)
      end
    end
  end

end