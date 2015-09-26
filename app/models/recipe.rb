class Recipe
  include HTTParty

  #HTTParty params
  hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json
  
  def self.for food
    get("/search", query: {q: food})["recipes"]
  end
end