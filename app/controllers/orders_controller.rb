class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders
    if @order.save
      redirect_to orders_paths#??
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_paths
  end
end
