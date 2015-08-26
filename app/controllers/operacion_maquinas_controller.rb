class OperacionMaquinasController < ApplicationController
  before_action :set_operacion_maquina, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /operacion_maquinas
  # GET /operacion_maquinas.json
  def index
    @operacion_maquinas = @fichatecnica.operacion_maquinas.search(params[:search], params[:page])
  end

  # GET /operacion_maquinas/1
  # GET /operacion_maquinas/1.json
  def show
  end

  # GET /operacion_maquinas/new
  def new
    @operacion_maquina = OperacionMaquina.new
  end

  # GET /operacion_maquinas/1/edit
  def edit
  end

  # POST /operacion_maquinas
  # POST /operacion_maquinas.json
  def create
    @operacion_maquina = OperacionMaquina.new(operacion_maquina_params)
    @operacion_maquina.fichatecnica_id = @fichatecnica.id
    respond_to do |format|
      if @operacion_maquina.save
        format.html { redirect_to fichatecnica_operacion_maquinas_path(@fichatecnica), notice: 'Operacion maquina was successfully created.' }
        format.json { render :show, status: :created, location: @operacion_maquina }
      else
        format.html { render :new }
        format.json { render json: @operacion_maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operacion_maquinas/1
  # PATCH/PUT /operacion_maquinas/1.json
  def update
    respond_to do |format|
      if @operacion_maquina.update(operacion_maquina_params)
        format.html { redirect_to fichatecnica_operacion_maquinas_path(@fichatecnica), notice: 'Operacion maquina was successfully updated.' }
        format.json { render :show, status: :ok, location: @operacion_maquina }
      else
        format.html { render :edit }
        format.json { render json: @operacion_maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operacion_maquinas/1
  # DELETE /operacion_maquinas/1.json
  def destroy
    @operacion_maquina.destroy
    respond_to do |format|
      format.html { redirect_to fichatecnica_operacion_maquinas_url(@fichatecnica), notice: 'Operacion maquina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operacion_maquina
      @fichatecnica = Fichatecnica.find(params[:fichatecnica_id])
      @operacion_maquina = OperacionMaquina.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operacion_maquina_params
      params.require(:operacion_maquina).permit(:operacion_id, :maquina_id, :tioperacion_id, :fichatecnica_id, :sam, :calibreaguja, :ppp, :margencostura, :hilo, :guia_acesorios, :observaciones, :num)
    end
end
