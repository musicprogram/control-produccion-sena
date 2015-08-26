class FichatecnicasController < ApplicationController
  before_action :set_fichatecnica, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /fichatecnicas
  # GET /fichatecnicas.json
  def index
   @fichatecnicas = @reference.fichatecnicas.all
  end

  # GET /fichatecnicas/1
  # GET /fichatecnicas/1.json
  def show
  end

  # GET /fichatecnicas/new
  def new
    @fichatecnica = Fichatecnica.new
  end

  # GET /fichatecnicas/1/edit
  def edit
  end

  # POST /fichatecnicas
  # POST /fichatecnicas.json
  def create
    @fichatecnica = Fichatecnica.new(fichatecnica_params)
    @fichatecnica.reference_id = @reference.id
    respond_to do |format|
      if @fichatecnica.save
        format.html { redirect_to reference_fichatecnicas_path(@reference), notice: 'Fichatecnica was successfully created.' }
        format.json { render :show, status: :created, location: @fichatecnica }
      else
        format.html { render :new }
        format.json { render json: @fichatecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fichatecnicas/1
  # PATCH/PUT /fichatecnicas/1.json
  def update
    respond_to do |format|
      if @fichatecnica.update(fichatecnica_params)
        format.html { redirect_to reference_fichatecnicas_path(@reference), notice: 'Fichatecnica was successfully updated.' }
        format.json { render :show, status: :ok, location: @fichatecnica }
      else
        format.html { render :edit }
        format.json { render json: @fichatecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fichatecnicas/1
  # DELETE /fichatecnicas/1.json
  def destroy
    @fichatecnica.destroy
    respond_to do |format|
      format.html { redirect_to reference_fichatecnicas_url(@reference), notice: 'Fichatecnica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fichatecnica
      @reference = Reference.find(params[:reference_id])
      @fichatecnica = Fichatecnica.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fichatecnica_params
      params.require(:fichatecnica).permit(:descripcion, :tallapromedio,  {:talla_ids => []}, {:tela_ids => []}, {:color_ids => []}, {:especificacion_ids =>[]}, {:estandar_ids => []}, :procesoext_ids, {:pieza_ids => []}, :reference_id, :medidaprenda_id, :modulo_id, :materiale_id, :insumo_id, :muestra)
    end
end
