class CostomesController < ApplicationController
  before_action :set_costome, only: [:show, :edit, :update, :destroy]

  # GET /costomes
  # GET /costomes.json
  def index
    @costomes = Costome.all
  end

  # GET /costomes/1
  # GET /costomes/1.json
  def show
  end

  # GET /costomes/new
  def new
    @costome = Costome.new
  end

  # GET /costomes/1/edit
  def edit
  end

  # POST /costomes
  # POST /costomes.json
  def create
    @costome = Costome.new(costome_params)

    respond_to do |format|
      if @costome.save
        format.html { redirect_to @costome, notice: 'Costome was successfully created.' }
        format.json { render :show, status: :created, location: @costome }
      else
        format.html { render :new }
        format.json { render json: @costome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costomes/1
  # PATCH/PUT /costomes/1.json
  def update
    respond_to do |format|
      if @costome.update(costome_params)
        format.html { redirect_to @costome, notice: 'Costome was successfully updated.' }
        format.json { render :show, status: :ok, location: @costome }
      else
        format.html { render :edit }
        format.json { render json: @costome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costomes/1
  # DELETE /costomes/1.json
  def destroy
    @costome.destroy
    respond_to do |format|
      format.html { redirect_to costomes_url, notice: 'Costome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costome
      @costome = Costome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costome_params
      params.require(:costome).permit(:porcenjatesalud, :salud, :porcentajepension, :pension, :porcentajerprofesional, :rprofesional, :porcentajesena, :sena, :porcentajeicbf, :icbf, :porcentajecajacompensacion, :cajacompensaciontotal, :porcentajetotal_costom, :total_costom, :porcentajetotalneto, :totalneto, :sueldo_id, :prestacion_id)
    end
end
