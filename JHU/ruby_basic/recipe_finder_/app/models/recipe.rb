require 'httparty'

class Recipe
  include HTTParty

  default_options.update(verify: false)
  ENV['FOOD2FORK_KEY'] = '6a2fffabc59d4f1efe291db03da0bbda'
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || "www.food2fork.com"
  base_uri "http://#{hostport}/api"
  default_params key: ENV['FOOD2FORK_KEY']
  format :json

  def self.for term        
    get("/search", query: { q: term })["recipes"]
  end
end