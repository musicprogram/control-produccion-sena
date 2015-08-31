class ResultadoCostosController < ApplicationController
  before_action :set_resultado_costo, only: [:show, :edit, :update, :destroy]

  # GET /resultado_costos
  # GET /resultado_costos.json
  def index
    @resultado_costos = ResultadoCosto.all
  end

  # GET /resultado_costos/1
  # GET /resultado_costos/1.json
  def show
    @sueldos = Sueldo.all
    @prestaciones = Prestacion.all
    @dlaborals = Dlaboral.all
    @costomes = Costome.all
    @resultado_costos = ResultadoCosto.all
    
  end

  # GET /resultado_costos/new
  def new
    @resultado_costo = ResultadoCosto.new
    
  end

  # GET /resultado_costos/1/edit
  def edit
  end

  # POST /resultado_costos
  # POST /resultado_costos.json
  def create
    @resultado_costo = ResultadoCosto.new(resultado_costo_params)

    respond_to do |format|
      if @resultado_costo.save
        format.html { redirect_to @resultado_costo, notice: 'Resultado costo was successfully created.' }
        format.json { render :show, status: :created, location: @resultado_costo }
      else
        format.html { render :new }
        format.json { render json: @resultado_costo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resultado_costos/1
  # PATCH/PUT /resultado_costos/1.json
  def update
    respond_to do |format|
      if @resultado_costo.update(resultado_costo_params)
        format.html { redirect_to @resultado_costo, notice: 'Resultado costo was successfully updated.' }
        format.json { render :show, status: :ok, location: @resultado_costo }
      else
        format.html { render :edit }
        format.json { render json: @resultado_costo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resultado_costos/1
  # DELETE /resultado_costos/1.json
  def destroy
    @resultado_costo.destroy
    respond_to do |format|
      format.html { redirect_to resultado_costos_url, notice: 'Resultado costo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resultado_costo
      @resultado_costo = ResultadoCosto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resultado_costo_params
      params.require(:resultado_costo).permit(:dlaborales_mes, :costo_dia, :hlaborales, :costo_hora, :costo_minuto, :recargo_adicional, :total_minuto, :sueldo_id, :dlaboral_id, :prestacion_id, :costome_id)
    end
end
