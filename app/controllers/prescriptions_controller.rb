class PrescriptionsController < ApplicationController
  def index
    @prescriptions = Prescription.where(user: current_user)
  end

  def create
    @prescription = Prescription.new(prescription_params)
    @prescription.user = current_user
    if @prescription.save
    redirect_to prescriptions_path
    else
      render :new
    end
  end

  def new
    @prescription = Prescription.new
  end

  def show
    @prescription = Prescription.find(params[:id])
  end

  def destroy
    @prescription = Prescription.find(params[:id])
    @prescription.destroy
    redirect_to prescriptions_path
  end

  def create_simple
    @prescription = Prescription.new(prescription_params_simple)
    @prescription.user = current_user
    if @prescription.save
    redirect_to new_prescription_order_path(@prescription)
    else
      render :new_simple
    end
  end

  def new_simple
    @prescription = Prescription.new
  end

  private

  def prescription_params_simple
    params.require(:prescription).permit(:image, :image_cache)
  end

  def prescription_params
    params.require(:prescription).permit(:image, :image_cache, :prescription_name, :prescription_start_date, :prescription_expiry_date)
  end
end
