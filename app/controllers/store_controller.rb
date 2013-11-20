class StoreController < ApplicationController
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def seach
    #no code is required here
  end #Automatically loads the app/views/store/search.html.erb
  
  def search_results
    @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
  end
end
