class OperacionesController < ApplicationController
  before_action :set_operacion, only: [:show, :edit, :update, :destroy]

  # GET /operaciones
  # GET /operaciones.json
  def index
    @operaciones = Operacion.all
  end

  # GET /operaciones/1
  # GET /operaciones/1.json
  def show
  end

  # GET /operaciones/new
  def new
    @operacion = Operacion.new
  end

  # GET /operaciones/1/edit
  def edit
  end

  # POST /operaciones
  # POST /operaciones.json
  def create
    @operacion = Operacion.new(operacion_params)

    respond_to do |format|
      if @operacion.save
        format.html { redirect_to @operacion, notice: 'Operacion was successfully created.' }
        format.json { render :show, status: :created, location: @operacion }
      else
        format.html { render :new }
        format.json { render json: @operacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operaciones/1
  # PATCH/PUT /operaciones/1.json
  def update
    respond_to do |format|
      if @operacion.update(operacion_params)
        format.html { redirect_to @operacion, notice: 'Operacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @operacion }
      else
        format.html { render :edit }
        format.json { render json: @operacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operaciones/1
  # DELETE /operaciones/1.json
  def destroy
    @operacion.destroy
    respond_to do |format|
      format.html { redirect_to operaciones_url, notice: 'Operacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operacion
      @operacion = Operacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operacion_params
      params.require(:operacion).permit(:nombre, :descripcion)
    end
end
