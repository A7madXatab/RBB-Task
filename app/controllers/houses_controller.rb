class HousesController < ApplicationController
  before_action :set_house, only: %i[ show edit update destroy ]

  # GET /houses or /houses.json
  def index
    @houses = House.all
  end

  # GET /houses/new
  def new
    @house = House.new
  end

  # POST /houses or /houses.json
  def create
    @house = House.new(house_params)
    @asset = Asset.new(asset_params)

    @asset.assetable = @house

    respond_to do |format|
      if @house.save
        @asset.save
        format.html { redirect_to root_path, notice: "House was successfully created." }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_house
    @house = House.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def house_params
    params.require(:house).permit(:rooms, :floors, :air_cond, :image)
  end

  def asset_params
    params.require(:house).permit(:owner, :address, :sqmt, :price)
  end
end
