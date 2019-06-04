class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @prescription = Prescription.find(params[:prescription_id])
    @order = Order.new
  end

  def create
    @prescription = Prescription.find(params[:prescription_id])
    @order = current_user.orders.build(order_params)
    if @order.save
      redirect_to prescription_orders_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:street_name, :zip_code, :city)
  end
end
