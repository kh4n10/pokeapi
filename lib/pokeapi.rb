require "httparty"
require "json"

class Pokeapi
	include HTTParty

	base_uri "http://pokeapi.co/api/v2"

  def self.get_the(resource, id)
    self.get("/#{resource}/#{id}")
  end
end