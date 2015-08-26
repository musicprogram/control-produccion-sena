class MoperacionesController < ApplicationController
  before_action :set_moperacion, only: [:show, :edit, :update, :destroy]

  # GET /moperaciones
  # GET /moperaciones.json
  def index
    @moperaciones = Moperacion.all
  end

  # GET /moperaciones/1
  # GET /moperaciones/1.json
  def show
  end

  # GET /moperaciones/new
  def new
    @moperacion = Moperacion.new
  end

  # GET /moperaciones/1/edit
  def edit
  end

  # POST /moperaciones
  # POST /moperaciones.json
  def create
    @moperacion = Moperacion.new(moperacion_params)

    respond_to do |format|
      if @moperacion.save
        format.html { redirect_to @moperacion, notice: 'Moperacion was successfully created.' }
        format.json { render :show, status: :created, location: @moperacion }
      else
        format.html { render :new }
        format.json { render json: @moperacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moperaciones/1
  # PATCH/PUT /moperaciones/1.json
  def update
    respond_to do |format|
      if @moperacion.update(moperacion_params)
        format.html { redirect_to @moperacion, notice: 'Moperacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @moperacion }
      else
        format.html { render :edit }
        format.json { render json: @moperacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moperaciones/1
  # DELETE /moperaciones/1.json
  def destroy
    @moperacion.destroy
    respond_to do |format|
      format.html { redirect_to moperaciones_url, notice: 'Moperacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moperacion
      @moperacion = Moperacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moperacion_params
      params.require(:moperacion).permit(:omaquina_id, :operacion_id)
    end
end
