class MainPagesController < ApplicationController
  def home
  end

  def menu
    @product = Product.all
    @categories = Category.all
  end

  def about
  end
end
