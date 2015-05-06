class MainPagesController < ApplicationController
  def home
  end

  def menu
    @products = Product.all
    @categories = Category.all
  end

  def about
  end
end
