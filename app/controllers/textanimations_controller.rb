class TextanimationsController < ApplicationController
  before_action :set_textanimation, only: %i[ show edit update destroy ]

  # GET /textanimations or /textanimations.json
  def index
    @textanimations = Textanimation.all
  end

  # GET /textanimations/1 or /textanimations/1.json
  def show
  end

  # GET /textanimations/new
  def new
    @textanimation = Textanimation.new
  end

  # GET /textanimations/1/edit
  def edit
  end

  # POST /textanimations or /textanimations.json
  def create
    @textanimation = Textanimation.new(textanimation_params)

    respond_to do |format|
      if @textanimation.save
        format.html { redirect_to textanimation_url(@textanimation), notice: "Textanimation was successfully created." }
        format.json { render :show, status: :created, location: @textanimation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @textanimation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textanimations/1 or /textanimations/1.json
  def update
    respond_to do |format|
      if @textanimation.update(textanimation_params)
        format.html { redirect_to textanimation_url(@textanimation), notice: "Textanimation was successfully updated." }
        format.json { render :show, status: :ok, location: @textanimation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @textanimation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textanimations/1 or /textanimations/1.json
  def destroy
    @textanimation.destroy

    respond_to do |format|
      format.html { redirect_to textanimations_url, notice: "Textanimation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textanimation
      @textanimation = Textanimation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def textanimation_params
      params.require(:textanimation).permit(:text_id, :percent, :translatex, :translatey, :rotate, :color)
    end
end
