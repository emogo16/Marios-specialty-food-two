class ProductsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :edit, :destroy] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

def index
  @products = Product.all
  render :index
end

def home
  @products = Product.all
  render :home 
end

def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end

  def new
  @product = Product.new
end

def create
  @product = Product.new(product_params)
  if @product.save
    flash[:notice] = "Product successfully added!"
    redirect_to products_path
  else
    flash[:notice] = "Your product has not been added."
    render :new
  end
end

  def edit
    @product = Product.find(params[:id])
  end

  

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      flash[:notice] = "Your product has not been updated."
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product successfully DESTROYED!!"
    redirect_to products_path
  end

  # def landing
  #   @products = Product
  #   render :landing
  # end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end
end
