class MaterialFichatecnicasController < ApplicationController
  before_action :set_material_fichatecnica, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /material_fichatecnicas
  # GET /material_fichatecnicas.json
  def index
    @material_fichatecnicas = @fichatecnica.material_fichatecnicas.all
  end

  # GET /material_fichatecnicas/1
  # GET /material_fichatecnicas/1.json
  def show
  end

  # GET /material_fichatecnicas/new
  def new
    @material_fichatecnica = MaterialFichatecnica.new
  end

  # GET /material_fichatecnicas/1/edit
  def edit
  end

  # POST /material_fichatecnicas
  # POST /material_fichatecnicas.json
  def create
    @material_fichatecnica = MaterialFichatecnica.new(material_fichatecnica_params)
    @material_fichatecnica.fichatecnica_id = @fichatecnica.id
    respond_to do |format|
      if @material_fichatecnica.save
        format.html { redirect_to fichatecnica_material_fichatecnicas_path(@fichatecnica), notice: 'Material fichatecnica was successfully created.' }
        format.json { render :show, status: :created, location: @material_fichatecnica }
      else
        format.html { render :new }
        format.json { render json: @material_fichatecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_fichatecnicas/1
  # PATCH/PUT /material_fichatecnicas/1.json
  def update
    respond_to do |format|
      if @material_fichatecnica.update(material_fichatecnica_params)
        format.html { redirect_to fichatecnica_material_fichatecnicas_path(@fichatecnica), notice: 'Material fichatecnica was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_fichatecnica }
      else
        format.html { render :edit }
        format.json { render json: @material_fichatecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_fichatecnicas/1
  # DELETE /material_fichatecnicas/1.json
  def destroy
    @material_fichatecnica.destroy
    respond_to do |format|
      format.html { redirect_to fichatecnica_material_fichatecnicas_url(@fichatecnica), notice: 'Material fichatecnica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_fichatecnica
      @fichatecnica = Fichatecnica.find(params[:fichatecnica_id])
      @material_fichatecnica = MaterialFichatecnica.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_fichatecnica_params
      params.require(:material_fichatecnica).permit(:material_id, :fichatecnica_id, :cantidad, :observaciones, :unidade_id)
    end
end
