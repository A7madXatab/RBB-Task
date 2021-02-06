class CommericalUnitsController < ApplicationController
  before_action :set_commerical_unit, only: %i[ show edit update destroy ]

  # GET /commerical_units or /commerical_units.json
  def index
    @commerical_units = CommericalUnit.all
  end

  # GET /commerical_units/new
  def new
    @commerical_unit = CommericalUnit.new
  end

  # POST /commerical_units or /commerical_units.json
  def create
    @asset = Asset.new(asset_params)
    @commerical_unit = CommericalUnit.new(commerical_unit_params)

    @asset.assetable = @commerical_unit

    respond_to do |format|
      if @commerical_unit.save
        @asset.save
        format.html { redirect_to root_path, notice: "Commerical unit was successfully created." }
        format.json { render :show, status: :created, location: @commerical_unit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commerical_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_commerical_unit
    @commerical_unit = CommericalUnit.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def commerical_unit_params
    params.require(:commerical_unit).permit(:shops, :parking, :image)
  end

  def asset_params
    params.require(:commerical_unit).permit(:owner, :address, :sqmt, :price)
  end
end
