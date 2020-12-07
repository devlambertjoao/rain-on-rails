class API::V1::RainMeasuresController < ApplicationController
  before_action :set_rain_measure, only: [:show, :edit, :update, :destroy]

  # GET /rain_measures
  # GET /rain_measures.json
  def index
    @rain_measures = RainMeasure.all
  end

  # GET /rain_measures/1
  # GET /rain_measures/1.json
  def show
  end

  # GET /rain_measures/new
  def new
    @rain_measure = RainMeasure.new
  end

  # GET /rain_measures/1/edit
  def edit
  end

  # POST /rain_measures
  # POST /rain_measures.json
  def create
    @rain_measure = RainMeasure.new(rain_measure_params)

    respond_to do |format|
      if @rain_measure.save
        format.html { redirect_to @rain_measure, notice: 'Rain measure was successfully created.' }
        format.json { render :show, status: :created, location: @rain_measure }
      else
        format.html { render :new }
        format.json { render json: @rain_measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rain_measures/1
  # PATCH/PUT /rain_measures/1.json
  def update
    respond_to do |format|
      if @rain_measure.update(rain_measure_params)
        format.html { redirect_to @rain_measure, notice: 'Rain measure was successfully updated.' }
        format.json { render :show, status: :ok, location: @rain_measure }
      else
        format.html { render :edit }
        format.json { render json: @rain_measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rain_measures/1
  # DELETE /rain_measures/1.json
  def destroy
    @rain_measure.destroy
    respond_to do |format|
      format.html { redirect_to rain_measures_url, notice: 'Rain measure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rain_measure
      @rain_measure = RainMeasure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rain_measure_params
      params.require(:rain_measure).permit(:value, :date, :place_id)
    end
end
