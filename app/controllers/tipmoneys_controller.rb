class TipmoneysController < ApplicationController
  before_action :set_tipmoney, only: [:show, :edit, :update, :destroy]

  # GET /tipmoneys
  # GET /tipmoneys.json
  def index
    @tipmoneys = Tipmoney.all
  end

  # GET /tipmoneys/1
  # GET /tipmoneys/1.json
  def show
  end

  # GET /tipmoneys/new
  def new
    @tipmoney = Tipmoney.new
  end

  # GET /tipmoneys/1/edit
  def edit
  end

  # POST /tipmoneys
  # POST /tipmoneys.json
  def create
    @tipmoney = Tipmoney.new(tipmoney_params)

    respond_to do |format|
      if @tipmoney.save
        format.html { redirect_to @tipmoney, notice: 'Tipmoney was successfully created.' }
        format.json { render :show, status: :created, location: @tipmoney }
      else
        format.html { render :new }
        format.json { render json: @tipmoney.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipmoneys/1
  # PATCH/PUT /tipmoneys/1.json
  def update
    respond_to do |format|
      if @tipmoney.update(tipmoney_params)
        format.html { redirect_to @tipmoney, notice: 'Tipmoney was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipmoney }
      else
        format.html { render :edit }
        format.json { render json: @tipmoney.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipmoneys/1
  # DELETE /tipmoneys/1.json
  def destroy
    @tipmoney.destroy
    respond_to do |format|
      format.html { redirect_to tipmoneys_url, notice: 'Tipmoney was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipmoney
      @tipmoney = Tipmoney.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipmoney_params
      params.require(:tipmoney).permit(:siglas, :descripcion)
    end
end
