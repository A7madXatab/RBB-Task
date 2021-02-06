class HomeController < ApplicationController
  def index
    @all = Asset.order :created_at

    @houses = House.order :created_at
    @complex_buildings = ComplexBuilding.order :created_at
    @commerical_units = CommericalUnit.order :created_at
  end
end
