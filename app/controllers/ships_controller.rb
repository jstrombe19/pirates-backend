class ShipsController < ApplicationController
  before_action :set_ship, only: [:show, :update, :destroy]

  # GET /ships
  # GET /ships.json
  # def index
  #   @ships = Ship.all
  # end

  # GET /ships/1
  # GET /ships/1.json
  def show
  end

  # POST /ships
  # POST /ships.json
  def create
    @ship = Ship.new(ship_params)

    if @ship.save
      render :show, status: :created, location: @ship
    else
      # render json: @ship
    # end
  end

  # PATCH/PUT /ships/1
  # PATCH/PUT /ships/1.json
  def update
    if @ship.update(ship_params)
      render :show, status: :ok, location: @ship
    else
      render json: @ship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ships/1
  # DELETE /ships/1.json
  def destroy
    @ship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship
      @ship = Ship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_params
      params.require(:ship).permit(:name, :captain, :cursed)
    end
end
