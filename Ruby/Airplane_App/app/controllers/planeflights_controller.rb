class PlaneflightsController < ApplicationController
  before_action :set_planeflight, only: [:show, :edit, :update, :destroy]

  # GET /planeflights
  # GET /planeflights.json
  def index
    @planeflights = Planeflight.all
  end

  # GET /planeflights/1
  # GET /planeflights/1.json
  def show
  end

  # GET /planeflights/new
  def new
    @planeflight = Planeflight.new
  end

  # GET /planeflights/1/edit
  def edit
  end

  # POST /planeflights
  # POST /planeflights.json
  def create
    @planeflight = Planeflight.new(planeflight_params)

    respond_to do |format|
      if @planeflight.save
        format.html { redirect_to @planeflight, notice: 'Planeflight was successfully created.' }
        format.json { render :show, status: :created, location: @planeflight }
      else
        format.html { render :new }
        format.json { render json: @planeflight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planeflights/1
  # PATCH/PUT /planeflights/1.json
  def update
    respond_to do |format|
      if @planeflight.update(planeflight_params)
        format.html { redirect_to @planeflight, notice: 'Planeflight was successfully updated.' }
        format.json { render :show, status: :ok, location: @planeflight }
      else
        format.html { render :edit }
        format.json { render json: @planeflight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planeflights/1
  # DELETE /planeflights/1.json
  def destroy
    @planeflight.destroy
    respond_to do |format|
      format.html { redirect_to planeflights_url, notice: 'Planeflight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planeflight
      @planeflight = Planeflight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planeflight_params
      params.require(:planeflight).permit(:plane_id_id, :airline, :number, :fromcity, :tocity)
    end
end
