class BootiesController < ApplicationController
  before_action :set_booty, only: [:show, :update, :destroy]

  # GET /booties
  # GET /booties.json
  def index
    @booties = Booty.all
  end

  # GET /booties/1
  # GET /booties/1.json
  def show
  end

  # POST /booties
  # POST /booties.json
  def create
    @booty = Booty.new(booty_params)

    if @booty.save
      render :show, status: :created, location: @booty
    else
      render json: @booty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /booties/1
  # PATCH/PUT /booties/1.json
  def update
    if @booty.update(booty_params)
      render :show, status: :ok, location: @booty
    else
      render json: @booty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /booties/1
  # DELETE /booties/1.json
  def destroy
    @booty.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booty
      @booty = Booty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booty_params
      params.require(:booty).permit(:gold, :woodenChest)
    end
end
