class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def today
    @orders = Order.all :conditions => ["DATE(created_at) = DATE(?)", Time.now]
    render :action => 'index'
  end


  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @suppliers = Supplier.all
    @products = Product.all
  end

  def create
    @order = Order.new(params[:order])
    p =  Product.find(params[:product][:id].split('_')[1])
    @order.product = p
    @order.supplier = p.supplier
    @order.user = User.find(session[:user_id])
    if @order.save
      redirect_to @order, :notice => "Successfully created order."
    else
      render :action => 'new'
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(params[:order])
      redirect_to @order, :notice  => "Successfully updated order."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_url, :notice => "Successfully destroyed order."
  end
end
