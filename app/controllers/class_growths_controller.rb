class ClassGrowthsController < ApplicationController
  before_action :set_class_growth, only: %i[ show edit update destroy ]

  # GET /class_growths or /class_growths.json
  def index
    @class_growths = ClassGrowth.all
  end

  # GET /class_growths/1 or /class_growths/1.json
  def show
  end

  # GET /class_growths/new
  def new
    @class_growth = ClassGrowth.new
  end

  # GET /class_growths/1/edit
  def edit
  end

  # POST /class_growths or /class_growths.json
  def create
    @class_growth = ClassGrowth.new(class_growth_params)

    respond_to do |format|
      if @class_growth.save
        format.html { redirect_to class_growth_url(@class_growth), notice: "Class growth was successfully created." }
        format.json { render :show, status: :created, location: @class_growth }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @class_growth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_growths/1 or /class_growths/1.json
  def update
    respond_to do |format|
      if @class_growth.update(class_growth_params)
        format.html { redirect_to class_growth_url(@class_growth), notice: "Class growth was successfully updated." }
        format.json { render :show, status: :ok, location: @class_growth }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @class_growth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_growths/1 or /class_growths/1.json
  def destroy
    @class_growth.destroy

    respond_to do |format|
      format.html { redirect_to class_growths_url, notice: "Class growth was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_growth
      @class_growth = ClassGrowth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_growth_params
      params.require(:class_growth).permit(:class_name, :class_rank, :hp, :str, :mag, :dex, :spd, :def, :res, :lck, :bld)
    end
end
