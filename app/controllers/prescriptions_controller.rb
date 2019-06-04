class PrescriptionsController < ApplicationController
  def index
    @prescriptions = Prescription.all
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

  private

  def prescription_params
    params.require(:prescription).permit(:image, :image_cache, :prescription_name, :prescription_start_date, :prescription_expiry_date)
  end
end
