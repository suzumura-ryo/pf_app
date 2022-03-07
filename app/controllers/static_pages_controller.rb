class StaticPagesController < ApplicationController
  
  def home
      @procedure = current_user.recipes.build if logged_in?
  end
  
  def show
   @recipes = Recipe.order("created_at desc").limit(8)
  end
  
end
