class CostoGeneralsController < ApplicationController
  before_action :set_costo_general, only: [:show, :edit, :update, :destroy]

  # GET /costo_generals
  # GET /costo_generals.json
  def index
    @costo_generals = CostoGeneral.all
    @costo_general = CostoGeneral.new
  end

  # GET /costo_generals/1
  # GET /costo_generals/1.json
  def show
  end

  # GET /costo_generals/new
  def new
    @costo_general = CostoGeneral.new
  end

  # GET /costo_generals/1/edit
  def edit
  end

  # POST /costo_generals
  # POST /costo_generals.json
  def create
    @costo_general = CostoGeneral.new(costo_general_params)

    respond_to do |format|
      if @costo_general.save
        format.html { redirect_to @costo_general, notice: 'Costo general was successfully created.' }
        format.json { render :show, status: :created, location: @costo_general }
        format.js
      else
        format.html { render :new }
        format.json { render json: @costo_general.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /costo_generals/1
  # PATCH/PUT /costo_generals/1.json
  def update
    respond_to do |format|
      if @costo_general.update(costo_general_params)
        format.html { redirect_to @costo_general, notice: 'Costo general was successfully updated.' }
        format.json { render :show, status: :ok, location: @costo_general }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @costo_general.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /costo_generals/1
  # DELETE /costo_generals/1.json
  def destroy
    @costo_general.destroy
    respond_to do |format|
      format.html { redirect_to costo_generals_url, notice: 'Costo general was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costo_general
      @costo_general = CostoGeneral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costo_general_params
      params.require(:costo_general).permit(:salario, :salario_porcentaje, :subsidio, :subsidio_procentaje, :total_sueldo, :total_porcentaje, :cesantias, :cesantias_porcentaje, :prima, :prima_procentaje, :vacaciones, :vacaciones_porcentaje, :intereses_cesantias, :total_prestacion, :total_porcentaje, :porcenjatesalud, :salud, :porcentajepension, :pension, :porcentajerprofesional, :rprofesional, :porcentajesena, :sena, :porcentajeicbf, :icbf, :porcentajecajacompensacion, :cajacompensaciontotal, :porcentajetotal_costom, :total_costom, :porcentajetotalneto, :totalneto, :dias_año, :domingos, :festivos, :vacaciones, :total_dias, :dlaborales_mes, :costo_dia, :hlaborales, :costo_hora, :costo_minuto, :recargo_adicional, :total_minuto)
    end
end
