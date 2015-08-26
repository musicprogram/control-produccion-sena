class SueldosController < ApplicationController
  before_action :set_sueldo, only: [:show, :edit, :update, :destroy]

  # GET /sueldos
  # GET /sueldos.json
  def index
    @sueldos = Sueldo.all
  end

  # GET /sueldos/1
  # GET /sueldos/1.json
  def show
  end

  # GET /sueldos/new
  def new
    @sueldo = Sueldo.new
  end

  # GET /sueldos/1/edit
  def edit
  end

  # POST /sueldos
  # POST /sueldos.json
  def create
    @sueldo = Sueldo.new(sueldo_params)

    respond_to do |format|
      if @sueldo.save
        format.html { redirect_to @sueldo, notice: 'Sueldo was successfully created.' }
        format.json { render :show, status: :created, location: @sueldo }
      else
        format.html { render :new }
        format.json { render json: @sueldo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sueldos/1
  # PATCH/PUT /sueldos/1.json
  def update
    respond_to do |format|
      if @sueldo.update(sueldo_params)
        format.html { redirect_to @sueldo, notice: 'Sueldo was successfully updated.' }
        format.json { render :show, status: :ok, location: @sueldo }
      else
        format.html { render :edit }
        format.json { render json: @sueldo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sueldos/1
  # DELETE /sueldos/1.json
  def destroy
    @sueldo.destroy
    respond_to do |format|
      format.html { redirect_to sueldos_url, notice: 'Sueldo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sueldo
      @sueldo = Sueldo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sueldo_params
      params.require(:sueldo).permit(:salario, :salario_porcentaje, :subsidio, :subsidio_procentaje, :total_sueldo, :total_porcentaje)
    end
end
