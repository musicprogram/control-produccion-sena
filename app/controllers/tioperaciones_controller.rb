class TioperacionesController < ApplicationController
  before_action :set_tioperacion, only: [:show, :edit, :update, :destroy]

  # GET /tioperaciones
  # GET /tioperaciones.json
  def index
    @tioperaciones = Tioperacion.all
  end

  # GET /tioperaciones/1
  # GET /tioperaciones/1.json
  def show
  end

  # GET /tioperaciones/new
  def new
    @tioperacion = Tioperacion.new
  end

  # GET /tioperaciones/1/edit
  def edit
  end

  # POST /tioperaciones
  # POST /tioperaciones.json
  def create
    @tioperacion = Tioperacion.new(tioperacion_params)

    respond_to do |format|
      if @tioperacion.save
        format.html { redirect_to @tioperacion, notice: 'Tioperacion was successfully created.' }
        format.json { render :show, status: :created, location: @tioperacion }
      else
        format.html { render :new }
        format.json { render json: @tioperacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tioperaciones/1
  # PATCH/PUT /tioperaciones/1.json
  def update
    respond_to do |format|
      if @tioperacion.update(tioperacion_params)
        format.html { redirect_to @tioperacion, notice: 'Tioperacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @tioperacion }
      else
        format.html { render :edit }
        format.json { render json: @tioperacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tioperaciones/1
  # DELETE /tioperaciones/1.json
  def destroy
    @tioperacion.destroy
    respond_to do |format|
      format.html { redirect_to tioperaciones_url, notice: 'Tioperacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tioperacion
      @tioperacion = Tioperacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tioperacion_params
      params.require(:tioperacion).permit(:nombre)
    end
end
