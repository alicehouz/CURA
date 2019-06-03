class PrescriptionsController < ApplicationController
  def index
    @prescriptions = Prescription.all
  end

  def create
    @prescription = current_user.prescriptions
    if @prescription.save
      redirect_to prescriptions_path??
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
    @prescription = prescription.find(params[:id])
    @prescription.destroy
    redirect_to ??
  end

  private

  def prescription_params
    params.require(:prescription).permit(:scan_date, :image, :prescription_name, :prescription_start_date, :prescription_expiry_date, :delivery_date, :reccurrency)
  end
end
