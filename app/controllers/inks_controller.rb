class InksController < ApplicationController
  before_action :set_ink, only: [:show, :edit, :update, :destroy]

  # GET /inks
  # GET /inks.json
  def index
    @inks = Ink.all
  end

  # GET /inks/1
  # GET /inks/1.json
  def show
  end

  # GET /inks/new
  def new
    @ink = Ink.new
  end

  # GET /inks/1/edit
  def edit
  end

  # POST /inks
  # POST /inks.json
  def create
    @ink = Ink.new(ink_params)

    respond_to do |format|
      if @ink.save
        format.html { redirect_to @ink, notice: 'Ink was successfully created.' }
        format.json { render :show, status: :created, location: @ink }
      else
        format.html { render :new }
        format.json { render json: @ink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inks/1
  # PATCH/PUT /inks/1.json
  def update
    respond_to do |format|
      if @ink.update(ink_params)
        format.html { redirect_to @ink, notice: 'Ink was successfully updated.' }
        format.json { render :show, status: :ok, location: @ink }
      else
        format.html { render :edit }
        format.json { render json: @ink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inks/1
  # DELETE /inks/1.json
  def destroy
    @ink.destroy
    respond_to do |format|
      format.html { redirect_to inks_url, notice: 'Ink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ink
      @ink = Ink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ink_params
      params.require(:ink).permit(:name, :model, :manufacturer)
    end
end
