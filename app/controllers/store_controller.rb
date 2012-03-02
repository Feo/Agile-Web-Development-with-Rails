class StoreController < ApplicationController
  def index
    @products = Product.all
    @count = increment_count
  end

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
  end
end


