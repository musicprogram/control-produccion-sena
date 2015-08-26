class PrestacionesController < ApplicationController
  before_action :set_prestacion, only: [:show, :edit, :update, :destroy]

  # GET /prestaciones
  # GET /prestaciones.json
  def index
    @prestaciones = Prestacion.all
  end

  # GET /prestaciones/1
  # GET /prestaciones/1.json
  def show
  end

  # GET /prestaciones/new
  def new
    @prestacion = Prestacion.new
  end

  # GET /prestaciones/1/edit
  def edit
  end

  # POST /prestaciones
  # POST /prestaciones.json
  def create
    @prestacion = Prestacion.new(prestacion_params)

    respond_to do |format|
      if @prestacion.save
        format.html { redirect_to @prestacion, notice: 'Prestacion was successfully created.' }
        format.json { render :show, status: :created, location: @prestacion }
      else
        format.html { render :new }
        format.json { render json: @prestacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestaciones/1
  # PATCH/PUT /prestaciones/1.json
  def update
    respond_to do |format|
      if @prestacion.update(prestacion_params)
        format.html { redirect_to @prestacion, notice: 'Prestacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @prestacion }
      else
        format.html { render :edit }
        format.json { render json: @prestacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestaciones/1
  # DELETE /prestaciones/1.json
  def destroy
    @prestacion.destroy
    respond_to do |format|
      format.html { redirect_to prestaciones_url, notice: 'Prestacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestacion
      @prestacion = Prestacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prestacion_params
      params.require(:prestacion).permit(:cesantias, :cesantias_porcentaje, :prima, :prima_procentaje, :vacaciones, :vacaciones_porcentaje, :intereses_cesantias, :intereses_porcenjate, :total_prestacion, :total_porcentaje, :sueldo_id)
    end
end
