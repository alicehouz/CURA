class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end


  def welcome
    @prescription = Prescription.new
  end


  def order_placement

  end

  def order_placement_2
    @order= Order.new
  end

  def order_placement_3
  end

  def delivery
  end

end
