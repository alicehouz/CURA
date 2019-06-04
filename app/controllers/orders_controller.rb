class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = orders.create(order_params)
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

  private

  def order_params
    params.require(:order).permit(:order_number, :order_date, :street_name, :zip_code, :city, :prescription_price, :amount_refunded, :delivery_price, :total_price)

  end
end
