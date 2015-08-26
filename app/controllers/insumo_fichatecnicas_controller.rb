class InsumoFichatecnicasController < ApplicationController
  before_action :set_insumo_fichatecnica, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /insumo_fichatecnicas
  # GET /insumo_fichatecnicas.json
  def index
    @insumo_fichatecnicas = @fichatecnica.insumo_fichatecnicas.all
  end

  # GET /insumo_fichatecnicas/1
  # GET /insumo_fichatecnicas/1.json
  def show
  end

  # GET /insumo_fichatecnicas/new
  def new
    @insumo_fichatecnica = InsumoFichatecnica.new
  end

  # GET /insumo_fichatecnicas/1/edit
  def edit
  end

  # POST /insumo_fichatecnicas
  # POST /insumo_fichatecnicas.json
  def create
    @insumo_fichatecnica = InsumoFichatecnica.new(insumo_fichatecnica_params)
    @insumo_fichatecnica.fichatecnica_id = @fichatecnica.id
    respond_to do |format|
      if @insumo_fichatecnica.save
        format.html { redirect_to fichatecnica_insumo_fichatecnicas_path(@fichatecnica), notice: 'Insumo fichatecnica was successfully created.' }
        format.json { render :show, status: :created, location: @insumo_fichatecnica }
      else
        format.html { render :new }
        format.json { render json: @insumo_fichatecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumo_fichatecnicas/1
  # PATCH/PUT /insumo_fichatecnicas/1.json
  def update
    respond_to do |format|
      if @insumo_fichatecnica.update(insumo_fichatecnica_params)
        format.html { redirect_to fichatecnica_insumo_fichatecnicas_path(@fichatecnica), notice: 'Insumo fichatecnica was successfully updated.' }
        format.json { render :show, status: :ok, location: @insumo_fichatecnica }
      else
        format.html { render :edit }
        format.json { render json: @insumo_fichatecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumo_fichatecnicas/1
  # DELETE /insumo_fichatecnicas/1.json
  def destroy
    @insumo_fichatecnica.destroy
    respond_to do |format|
      format.html { redirect_to fichatecnica_insumo_fichatecnicas_url(@fichatecnica), notice: 'Insumo fichatecnica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumo_fichatecnica
      @fichatecnica = Fichatecnica.find(params[:fichatecnica_id])
      @insumo_fichatecnica = InsumoFichatecnica.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumo_fichatecnica_params
      params.require(:insumo_fichatecnica).permit(:insumo_id, :fichatecnica_id, :cantidad, :observaciones, :unidade_id)
    end
end
