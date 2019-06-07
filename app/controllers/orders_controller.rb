class OrdersController < ApplicationController
  def index
    @orders = Order.where(user: current_user)
  end

  def new
    @prescription = Prescription.find(params[:prescription_id])
    @order = Order.new
  end

  def create
    @prescription = Prescription.find(params[:prescription_id])
    @order = Order.new(order_params)
    @order.user = current_user
    @order.order_status = "pending"
    @order.order_date = Date.today
    if @order.save
      OrdersPrescription.create!(prescription_id: @prescription.id, order_id: @order.id)
      redirect_to orders_path
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    # @prescription = Prescription.find(params[:prescription_id])
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to  orders_path
  end


  # def edit
  #    @order = Order.find(params[:id])
  # end

  #   def update
  #   @order = Order.find(params[:id])
  #   @order.update(order_params)
  #   redirect_to  prescription_orders_path

  #   end

  private

  def order_params
    params.require(:order).permit(:street_name, :zip_code, :city)
  end
end
