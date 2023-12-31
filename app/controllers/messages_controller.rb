class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show edit update destroy css]

  # GET /messages or /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1 or /messages/1.json
  def show
    @text=Text.new(message_id:@message.id,fond:"#ffffff",duration:3, delay:0)
    @pic=Pic.new(message_id:@message.id,width:100,height:100,duration:3,delay:0)
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def css
    #if @message.pics[0]
    #  @message.pics[0].picanimations.new(percent:0)
    #end
    #if @message.texts[0]
    #  @message.texts[0].textanimations.new(percent:0)
    #end
  end
  def edit
    

  end

  # POST /messages or /messages.json
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        ChatJob.perform_now(@message)
        #format.html { redirect_to message_url(@message), notice: "Message was successfully created." }
        #format.json { render :show, status: :created, location: @message }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1 or /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        MessageJob.perform_now(@message)
        format.html { redirect_to message_url(@message), notice: "Message was successfully updated." }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1 or /messages/1.json
  def destroy
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url, notice: "Message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:sent_by, :body,:user_id,:room_id, :height, :width, :bodyx, :bodyy,:image,:music,:texts_attributes=>{},:pics_attributes=>{})
    end
end
