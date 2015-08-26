class ProveedorProcesoextsController < ApplicationController
  before_action :set_proveedor_procesoext, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /proveedor_procesoexts
  # GET /proveedor_procesoexts.json
  def index
    @proveedor_procesoexts = @fichatecnica.proveedor_procesoexts.all
  end

  # GET /proveedor_procesoexts/1
  # GET /proveedor_procesoexts/1.json
  def show
  end

  # GET /proveedor_procesoexts/new
  def new
    @proveedor_procesoext = ProveedorProcesoext.new
  end

  # GET /proveedor_procesoexts/1/edit
  def edit
  end

  # POST /proveedor_procesoexts
  # POST /proveedor_procesoexts.json
  def create
    @proveedor_procesoext = ProveedorProcesoext.new(proveedor_procesoext_params)
    @proveedor_procesoext.fichatecnica_id = @fichatecnica.id
    respond_to do |format|
      if @proveedor_procesoext.save
        format.html { redirect_to fichatecnica_proveedor_procesoexts_path(@fichatecnica), notice: 'Proveedor procesoext was successfully created.' }
        format.json { render :show, status: :created, location: @proveedor_procesoext }
      else
        format.html { render :new }
        format.json { render json: @proveedor_procesoext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedor_procesoexts/1
  # PATCH/PUT /proveedor_procesoexts/1.json
  def update
    respond_to do |format|
      if @proveedor_procesoext.update(proveedor_procesoext_params)
        format.html { redirect_to fichatecnica_proveedor_procesoexts_path(@fichatecnica), notice: 'Proveedor procesoext was successfully updated.' }
        format.json { render :show, status: :ok, location: @proveedor_procesoext }
      else
        format.html { render :edit }
        format.json { render json: @proveedor_procesoext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedor_procesoexts/1
  # DELETE /proveedor_procesoexts/1.json
  def destroy
    @proveedor_procesoext.destroy
    respond_to do |format|
      format.html { redirect_to fichatecnica_proveedor_procesoexts_url(@fichatecnica), notice: 'Proveedor procesoext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor_procesoext
      @fichatecnica = Fichatecnica.find(params[:fichatecnica_id])
      @proveedor_procesoext = ProveedorProcesoext.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveedor_procesoext_params
      params.require(:proveedor_procesoext).permit(:proveedor_id, :procesoext_id, :descripcion, :observaciones, :precio, :fichatecnica_id)
    end
end
