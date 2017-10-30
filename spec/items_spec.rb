require "httparty"
require "pokeapi"
require "rspec"


describe Pokeapi do
  context "given a request for an item" do
    it "responds with code 200; okay" do
      expect(Pokeapi.get_the("item",1).code).to eql(200)
    end
  end

  context "given a request for an attribute" do
    it "responds with 200; okay" do
      expect(Pokeapi.get_the("item-attribute",1).code).to eql(200)
    end
  end

  context "given a request for a catagory" do
    it "responds with 200; okay" do
      expect(Pokeapi.get_the("item-category",1).code).to eql(200)
    end
  end

  context "given a request for a fling effect" do
    it "responds with 200; okay" do
      expect(Pokeapi.get_the("item-fling-effect",1).code).to eql(200)
    end
  end

  context "given a request for a pocket slot" do
    it "responds with 200; okay" do
      expect(Pokeapi.get_the("item-pocket",1).code).to eql(200)
    end
  end

  context "given a list request" do
    it "responds" do 
      expect(Pokeapi.get_the_resource("item").code).to eql(200)
    end
  end

  context "given a request for an attribute list" do
    it "responds with 200; okay" do
      expect(Pokeapi.get_the_resource("item-attribute").code).to eql(200)
    end
  end

  context "given a request for a catagory list" do
    it "responds with 200; okay" do
      expect(Pokeapi.get_the_resource("item-category").code).to eql(200)
    end
  end

  context "given a request for a fling effect list" do
    it "responds with 200; okay" do
      expect(Pokeapi.get_the_resource("item-fling-effect").code).to eql(200)
    end
  end

  context "given a request for a pocket slot list" do
    it "responds with 200; okay" do
      expect(Pokeapi.get_the_resource("item-pocket").code).to eql(200)
    end
  end


end