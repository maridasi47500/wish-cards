class PicanimationsController < ApplicationController
  before_action :set_picanimation, only: %i[ show edit update destroy ]

  # GET /picanimations or /picanimations.json
  def index
    @picanimations = Picanimation.all
  end

  # GET /picanimations/1 or /picanimations/1.json
  def show
  end

  # GET /picanimations/new
  def new
    @picanimation = Picanimation.new
  end

  # GET /picanimations/1/edit
  def edit
  end

  # POST /picanimations or /picanimations.json
  def create
    @picanimation = Picanimation.new(picanimation_params)

    respond_to do |format|
      if @picanimation.save
        format.html { redirect_to picanimation_url(@picanimation), notice: "Picanimation was successfully created." }
        format.json { render :show, status: :created, location: @picanimation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @picanimation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picanimations/1 or /picanimations/1.json
  def update
    respond_to do |format|
      if @picanimation.update(picanimation_params)
        format.html { redirect_to picanimation_url(@picanimation), notice: "Picanimation was successfully updated." }
        format.json { render :show, status: :ok, location: @picanimation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picanimation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picanimations/1 or /picanimations/1.json
  def destroy
    @picanimation.destroy

    respond_to do |format|
      format.html { redirect_to picanimations_url, notice: "Picanimation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picanimation
      @picanimation = Picanimation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picanimation_params
      params.require(:picanimation).permit(:pic_id, :percent, :translatex, :translatey, :rotate, :color)
    end
end
