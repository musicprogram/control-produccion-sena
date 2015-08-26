class MedidaTallasController < ApplicationController
  before_action :set_medida_talla, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /medida_tallas
  # GET /medida_tallas.json
  def index
    @medida_tallas = @fichatecnica.medida_tallas.all
  end

  # GET /medida_tallas/1
  # GET /medida_tallas/1.json
  def show
  end

  # GET /medida_tallas/new
  def new
    @medida_talla = MedidaTalla.new
  end

  # GET /medida_tallas/1/edit
  def edit
  end

  # POST /medida_tallas
  # POST /medida_tallas.json
  def create
    @medida_talla = MedidaTalla.new(medida_talla_params)
    @medida_talla.fichatecnica_id = @fichatecnica.id
    respond_to do |format|
      if @medida_talla.save
        format.html { redirect_to fichatecnica_medida_tallas_path(@fichatecnica), notice: 'Medida talla was successfully created.' }
        format.json { render :show, status: :created, location: @medida_talla }
      else
        format.html { render :new }
        format.json { render json: @medida_talla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medida_tallas/1
  # PATCH/PUT /medida_tallas/1.json
  def update
    respond_to do |format|
      if @medida_talla.update(medida_talla_params)
        format.html { redirect_to fichatecnica_medida_tallas_path(@fichatecnica), notice: 'Medida talla was successfully updated.' }
        format.json { render :show, status: :ok, location: @medida_talla }
      else
        format.html { render :edit }
        format.json { render json: @medida_talla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medida_tallas/1
  # DELETE /medida_tallas/1.json
  def destroy
    @medida_talla.destroy
    respond_to do |format|
      format.html { redirect_to fichatecnica_medida_tallas_url(@fichatecnica), notice: 'Medida talla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medida_talla
      @fichatecnica = Fichatecnica.find(params[:fichatecnica_id])
      @medida_talla = MedidaTalla.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medida_talla_params
      params.require(:medida_talla).permit(:medida_id, :talla_id, :fichatecnica_id, :centimetros, :tolerancia)
    end
end