class ContaminationLevelsController < ApplicationController
  before_action :set_contamination_level, only: [:show, :edit, :update, :destroy]

  # GET /contamination_levels
  # GET /contamination_levels.json
  def index
    @contamination_levels = ContaminationLevel.all
  end

  # GET /contamination_levels/1
  # GET /contamination_levels/1.json
  def show
  end

  # GET /contamination_levels/new
  def new
    @contamination_level = ContaminationLevel.new
  end

  # GET /contamination_levels/1/edit
  def edit
  end

  # POST /contamination_levels
  # POST /contamination_levels.json
  def create
    @contamination_level = ContaminationLevel.new(contamination_level_params)

    respond_to do |format|
      if @contamination_level.save
        format.html { redirect_to @contamination_level, notice: 'Contamination level was successfully created.' }
        format.json { render :show, status: :created, location: @contamination_level }
      else
        format.html { render :new }
        format.json { render json: @contamination_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contamination_levels/1
  # PATCH/PUT /contamination_levels/1.json
  def update
    respond_to do |format|
      if @contamination_level.update(contamination_level_params)
        format.html { redirect_to @contamination_level, notice: 'Contamination level was successfully updated.' }
        format.json { render :show, status: :ok, location: @contamination_level }
      else
        format.html { render :edit }
        format.json { render json: @contamination_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contamination_levels/1
  # DELETE /contamination_levels/1.json
  def destroy
    @contamination_level.destroy
    respond_to do |format|
      format.html { redirect_to contamination_levels_url, notice: 'Contamination level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contamination_level
      @contamination_level = ContaminationLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contamination_level_params
      params.require(:contamination_level).permit(:nombre, :descripcion, :estado)
    end
end
