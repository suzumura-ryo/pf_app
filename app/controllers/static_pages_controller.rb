class StaticPagesController < ApplicationController
  
  def home
  end
  
  def show
   @recipes = Recipe.order("created_at desc").limit(8)
  end
  
end
