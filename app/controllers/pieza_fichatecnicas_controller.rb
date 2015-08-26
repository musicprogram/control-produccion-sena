class PiezaFichatecnicasController < ApplicationController
  before_action :set_pieza_fichatecnica, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /pieza_fichatecnicas
  # GET /pieza_fichatecnicas.json
  def index
    @pieza_fichatecnicas = @fichatecnica.pieza_fichatecnicas.all
  end

  # GET /pieza_fichatecnicas/1
  # GET /pieza_fichatecnicas/1.json
  def show
  end

  # GET /pieza_fichatecnicas/new
  def new
    @pieza_fichatecnica = PiezaFichatecnica.new
  end

  # GET /pieza_fichatecnicas/1/edit
  def edit
  end

  # POST /pieza_fichatecnicas
  # POST /pieza_fichatecnicas.json
  def create
    @pieza_fichatecnica = PiezaFichatecnica.new(pieza_fichatecnica_params)
    @pieza_fichatecnica.fichatecnica_id = @fichatecnica.id
    respond_to do |format|
      if @pieza_fichatecnica.save
        format.html { redirect_to fichatecnica_pieza_fichatecnicas_path(@fichatecnica), notice: 'Pieza fichatecnica was successfully created.' }
        format.json { render :show, status: :created, location: @pieza_fichatecnica }
      else
        format.html { render :new }
        format.json { render json: @pieza_fichatecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pieza_fichatecnicas/1
  # PATCH/PUT /pieza_fichatecnicas/1.json
  def update
    respond_to do |format|
      if @pieza_fichatecnica.update(pieza_fichatecnica_params)
        format.html { redirect_to fichatecnica_pieza_fichatecnicas_path(@fichatecnica), notice: 'Pieza fichatecnica was successfully updated.' }
        format.json { render :show, status: :ok, location: @pieza_fichatecnica }
      else
        format.html { render :edit }
        format.json { render json: @pieza_fichatecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pieza_fichatecnicas/1
  # DELETE /pieza_fichatecnicas/1.json
  def destroy
    @pieza_fichatecnica.destroy
    respond_to do |format|
      format.html { redirect_to fichatecnica_pieza_fichatecnicas_url(@fichatecnica), notice: 'Pieza fichatecnica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pieza_fichatecnica
      @fichatecnica = Fichatecnica.find(params[:fichatecnica_id])
      @pieza_fichatecnica = PiezaFichatecnica.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pieza_fichatecnica_params
      params.require(:pieza_fichatecnica).permit(:pieza_id, :fichatecnica_id, :cantidad, :observaciones)
    end
end
