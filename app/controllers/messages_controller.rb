class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show edit update destroy ]

  # GET /messages or /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1 or /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # view a list of the whole
  def list
    @messages = Message.all
  end

  # とりあえず指定したIDで引くやつを作りたい
  # def query_by_id
  # end
    

  # POST /messages or /messages.json
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to message_url(@message), notice: "Message was successfully created." }
        format.json { render :show, status: :created, location: @message }
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

  ## 単純な検索の復習
  ##### うんぽこ ######
  #### ポアもやむなし ####
  # phowa # # phowa # # phowa #

  def find_by_ids
    @messages = Message.find([2, 4, 6, 8, 10, 12, 14, 16])
    render 'messages/list'
  end

  def find_by_string
    @message = Message.find_by(message: '助けて')
    render 'messages/show'
  end

  def todesking
    @messages = Message.where(message: 'todesking')
    render 'messages/list'
  end

=begin  けっこ疲れた、本読む
  def todesking_form
    respond_to 
=end

  def todesking_result
    @messages = Message.where('message = ?', params[:message])
    render 'messages/list'
  end


  ## もっと複雑なやつを復習した後にどうやってフォームからつなげられるのか考える

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:message)
    end
  

end
