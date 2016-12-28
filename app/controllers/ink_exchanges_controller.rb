class InkExchangesController < ApplicationController
  before_action :set_ink_exchange, only: [:show, :edit, :update, :destroy]

  # GET /ink_exchanges
  # GET /ink_exchanges.json
  def index
    @ink_exchanges = InkExchange.all
  end

  # GET /ink_exchanges/1
  # GET /ink_exchanges/1.json
  def show
  end

  # GET /ink_exchanges/new
  def new
    @ink_exchange = InkExchange.new
  end

  # GET /ink_exchanges/1/edit
  def edit
  end

  # POST /ink_exchanges
  # POST /ink_exchanges.json
  def create
    @ink_exchange = InkExchange.new(ink_exchange_params)

    respond_to do |format|
      if @ink_exchange.save
        format.html { redirect_to @ink_exchange, notice: 'Ink exchange was successfully created.' }
        format.json { render :show, status: :created, location: @ink_exchange }
      else
        format.html { render :new }
        format.json { render json: @ink_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ink_exchanges/1
  # PATCH/PUT /ink_exchanges/1.json
  def update
    respond_to do |format|
      if @ink_exchange.update(ink_exchange_params)
        format.html { redirect_to @ink_exchange, notice: 'Ink exchange was successfully updated.' }
        format.json { render :show, status: :ok, location: @ink_exchange }
      else
        format.html { render :edit }
        format.json { render json: @ink_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ink_exchanges/1
  # DELETE /ink_exchanges/1.json
  def destroy
    @ink_exchange.destroy
    respond_to do |format|
      format.html { redirect_to ink_exchanges_url, notice: 'Ink exchange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ink_exchange
      @ink_exchange = InkExchange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ink_exchange_params
      params.require(:ink_exchange).permit(:ink_id, :user_id, :room, :printer, :exchange_datetime, :quantity, :emptying)
    end
end
