require "httparty"
require "json"

class Pokeapi
	include HTTParty

	base_uri "http://pokeapi.co/api/v2/"

  def get_the resource, id
    self.class.get("/#{resource}/#{id}")
  end
end