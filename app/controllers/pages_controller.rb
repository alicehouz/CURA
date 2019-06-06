class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end
  def welcome
  end
  def order_placement
  end

  def order_placement_2
  end

  def order_placement_3
  end

end
