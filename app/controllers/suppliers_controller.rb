class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(params[:supplier])
    if @supplier.save
      redirect_to @supplier, :notice => "Successfully created supplier."
    else
      render :action => 'new'
    end
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update_attributes(params[:supplier])
      redirect_to @supplier, :notice  => "Successfully updated supplier."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    redirect_to suppliers_url, :notice => "Successfully destroyed supplier."
  end
end
