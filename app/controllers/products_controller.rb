class ProductsController < ApplicationController
  def index
  	@products = Product.all 
  end

  def create 
  	product = Product.new(name: params[:product][:name], price: params[:product][:price], user: current_user)
  		flash[:success] = "Product added!" if product.save


  	redirect_to current_user
  end 

  def destroy 
  	product = Product.find(params[:id])
  	product.destroy if current_user == current_user
  	redirect_to current_user
  end 

  def update 
    @product = Product.find(params[:id])
      if @product.user == current_user
        flash[:error] = "cant buy your own product"
      else 
      @product.update_columns(buyer_id: current_user )
    end

    redirect_to current_user   
  end 

end


