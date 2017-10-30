require "httparty"
require "json"

class Pokeapi
	include HTTParty

	base_uri "http://pokeapi.co/api/v2/"

end