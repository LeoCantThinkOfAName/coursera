require 'httparty'

class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api/search"
  default_params key: ENV["FOOD2DORK_KEY"]
  format :json

  def self.for (ketword)
    get("/search", query: {q: keyword})["recipes"] 

end
