class ComplexBuildingsController < ApplicationController
  before_action :set_complex_building, only: %i[ show edit update destroy ]

  # GET /complex_buildings or /complex_buildings.json
  def index
    @complex_buildings = ComplexBuilding.all
  end

  # GET /complex_buildings/new
  def new
    @complex_building = ComplexBuilding.new
  end

  # POST /complex_buildings or /complex_buildings.json
  def create
    @complex_building = ComplexBuilding.new(complex_building_params)

    respond_to do |format|
      if @complex_building.save
        format.html { redirect_to root_path, notice: "Complex building was successfully created." }
        format.json { render :show, status: :created, location: @complex_building }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @complex_building.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_complex_building
    @complex_building = ComplexBuilding.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def complex_building_params
    params.require(:complex_building).permit(:owner, :address, :units, :sqmt, :price, :image)
  end

  def asset_params
    params.require(:house).permit(:owner, :address, :sqmt, :price)
  end
end
