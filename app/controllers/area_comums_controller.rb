class AreaComumsController < ApplicationController
  before_action :set_area_comum, only: %i[ show edit update destroy ]

  # GET /area_comums or /area_comums.json
  def index
    @area_comums = AreaComum.all
  end

  # GET /area_comums/1 or /area_comums/1.json
  def show
  end

  # GET /area_comums/new
  def new
    @area_comum = AreaComum.new
  end

  # GET /area_comums/1/edit
  def edit
  end

  # POST /area_comums or /area_comums.json
  def create
    @area_comum = AreaComum.new(area_comum_params)

    respond_to do |format|
      if @area_comum.save
        format.html { redirect_to @area_comum, notice: "Area comum was successfully created." }
        format.json { render :show, status: :created, location: @area_comum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @area_comum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area_comums/1 or /area_comums/1.json
  def update
    respond_to do |format|
      if @area_comum.update(area_comum_params)
        format.html { redirect_to @area_comum, notice: "Area comum was successfully updated." }
        format.json { render :show, status: :ok, location: @area_comum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @area_comum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_comums/1 or /area_comums/1.json
  def destroy
    @area_comum.destroy!

    respond_to do |format|
      format.html { redirect_to area_comums_path, status: :see_other, notice: "Area comum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_comum
      @area_comum = AreaComum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def area_comum_params
      params.require(:area_comum).permit(:nome)
    end
end
