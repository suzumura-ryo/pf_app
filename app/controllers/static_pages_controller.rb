class StaticPagesController < ApplicationController
  
  def home
    @recipe = Recipe.order("create_at desc").limit(8)
  end
end
