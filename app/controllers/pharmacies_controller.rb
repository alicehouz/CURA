class PharmaciesController < ApplicationController
  def index
    @pharmacies = Pharmacie.where.not(latitude: nil, longitude: nil)

    @markers = @pharmacies.map do |pharmacie|
      {
        lat: pharmacie.latitude,
        lng: pharmacie.longitude
      }
    end
  end

  def show
  end
end
