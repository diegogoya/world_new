class ProductsController < ApplicationController
  def index

    @product = Product.order(created_at: :asc)
    render 'index'

  end

  def new
    
    @user = User.find_by_id(params[:user_id])
    @product = @user.products.new
    render 'new'
  
  end

  def create
    
    @product = Product.new(product_params)
     if @product.save
       redirect_to "/product/#{@product.id}"
     else
       flash[:error] = @product.errors
       render 'new'

     end
  end

  def show

  	render 'show'
  
  end

  def create_and_destroy_actions

  	render 'create_and_destroy_actions'
  
  end
  
  def product_params
  
    params.require(:product).permit(:title, :description, :deadline_for_bidding, :imageproduct)
  
  end

end
