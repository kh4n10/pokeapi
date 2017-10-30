require "httparty"
require "pokeapi"
require "rspec"

describe Pokeapi do

  describe "Moves" do

    context "given a request for moves" do
      it "responds with code 200; okay" do
        expect(Pokeapi.get_the("move",1).code).to eql(200)
      end
    end

    context "given a request for ailments" do
      it "will respond with code 200; okay" do
        expect(Pokeapi.get_the("move-ailment",1).code).to eql(200)
      end
      it "will return id of 1" do
        expect(Pokeapi.get_the("move-ailment", 1)['id']).to eql(1)
      end
    end

    context "given a request for battle styles" do
      it "responds with code 200; okay" do
        expect(Pokeapi.get_the("move-battle-style",1).code).to eql(200)
      end
      it "will return id of 1" do
        expect(Pokeapi.get_the("move-battle-style", 1)['id']).to eql(1)
      end
    end

    context "given a request for catagories" do
      it "respond with code 200; okay" do
        expect(Pokeapi.get_the("move-category",1).code).to eql(200)
      end
      it "will return id of 1" do
        expect(Pokeapi.get_the("move-category", 1)['id']).to eql(1)
      end
    end

    context "given a request for damage classes" do
      it "respond with code 200; okay" do
        expect(Pokeapi.get_the("move-damage-class",1).code).to eql(200)
      end
      it "will return id of 1" do
        expect(Pokeapi.get_the("move-damage-class", 1)['id']).to eql(1)
      end
    end

    context "given a request for learn methods" do
      it "respond with code 200; okay" do
        expect(Pokeapi.get_the("move-learn-method",1).code).to eql(200)
      end
      it "will return id of 1" do
        expect(Pokeapi.get_the("move-learn-method", 1)['id']).to eql(1)
      end
    end

    context "given a request for targets" do
      it "respond with code 200; okay" do
        expect(Pokeapi.get_the("move-target",1).code).to eql(200)
      end
      it "will return id of 1" do
        expect(Pokeapi.get_the("move-target", 1)['id']).to eql(1)
      end
    end

    context "given a list request" do
      it "responds with code 200; okay" do 
        expect(Pokeapi.get_the_resource("move").code).to eql(200)
      end
    end

    context "given a request for the ailment list" do
      it "responds with code 200; okay" do 
        expect(Pokeapi.get_the_resource("move-ailment").code).to eql(200)
      end
    end

    context "given a request for the catagory list" do
      it "responds with code 200; okay" do 
        expect(Pokeapi.get_the_resource("move-category").code).to eql(200)
      end
    end

    context "given a list request" do
      it "responds with code 200; okay" do 
        expect(Pokeapi.get_the_resource("move-battle-style").code).to eql(200)
      end
    end

    context "given a list request" do
      it "responds with code 200; okay" do 
        expect(Pokeapi.get_the_resource("move-damage-class").code).to eql(200)
      end
    end

    context "given a list request" do
      it "responds with code 200; okay" do 
        expect(Pokeapi.get_the_resource("move-learn-method").code).to eql(200)
      end
    end
    context "given a list request" do
      it "responds with code 200; okay" do 
        expect(Pokeapi.get_the_resource("move-target").code).to eql(200)
      end
    end
  end
end