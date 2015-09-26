class Recipe
  #HTTParty params
  base_uri 'http://food2fork.com/api'
  default_params key: ENV['FOOD2FORK_KEY']
  format :json
  
  def self.for food
    get("/search", query: {q: food})["recipes"]
  end
end