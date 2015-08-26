class CostoFijosController < ApplicationController
  before_action :set_costo_fijo, only: [:show, :edit, :update, :destroy]

  # GET /costo_fijos
  # GET /costo_fijos.json
  def index
    @costo_fijos = CostoFijo.all
  end

  # GET /costo_fijos/1
  # GET /costo_fijos/1.json
  def show
  end

  # GET /costo_fijos/new
  def new
    @costo_fijo = CostoFijo.new
  end

  # GET /costo_fijos/1/edit
  def edit
  end

  # POST /costo_fijos
  # POST /costo_fijos.json
  def create
    @costo_fijo = CostoFijo.new(costo_fijo_params)

    respond_to do |format|
      if @costo_fijo.save
        format.html { redirect_to @costo_fijo, notice: 'Costo fijo was successfully created.' }
        format.json { render :show, status: :created, location: @costo_fijo }
      else
        format.html { render :new }
        format.json { render json: @costo_fijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costo_fijos/1
  # PATCH/PUT /costo_fijos/1.json
  def update
    respond_to do |format|
      if @costo_fijo.update(costo_fijo_params)
        format.html { redirect_to @costo_fijo, notice: 'Costo fijo was successfully updated.' }
        format.json { render :show, status: :ok, location: @costo_fijo }
      else
        format.html { render :edit }
        format.json { render json: @costo_fijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costo_fijos/1
  # DELETE /costo_fijos/1.json
  def destroy
    @costo_fijo.destroy
    respond_to do |format|
      format.html { redirect_to costo_fijos_url, notice: 'Costo fijo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costo_fijo
      @costo_fijo = CostoFijo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costo_fijo_params
      params.require(:costo_fijo).permit(:arrendamiento, :servicios_publicos, :nomina, :prestaciones, :otros_gastos, :papeleria, :honorarios, :gastos_mercadeo, :impuestos_municipales, :otros, :total_costos)
    end
end
