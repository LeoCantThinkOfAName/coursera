class RecipesController < ApplicationController
  def index
    @foods = ['Candies', 'Chocolates', 'Cookies', 'Jellies', 'Hamburgers', 'Sandwiches', 'Salads', 'Cakes', 'Pastas', 'Pizzas', 'Soups', 'Currys']
  	@search_term = params[:search] || @foods[rand(@foods.length)]
  	@recipes = Recipe.for(@search_term)
  end
end