class PmodulosController < ApplicationController
  before_action :set_pmodulo, only: [:show, :edit, :update, :destroy]

  # GET /pmodulos
  # GET /pmodulos.json
  def index
    @pmodulos = Pmodulo.all
  end

  # GET /pmodulos/1
  # GET /pmodulos/1.json
  def show
  end

  # GET /pmodulos/new
  def new
    @pmodulo = Pmodulo.new
  end

  # GET /pmodulos/1/edit
  def edit
  end

  # POST /pmodulos
  # POST /pmodulos.json
  def create
    @pmodulo = Pmodulo.new(pmodulo_params)

    respond_to do |format|
      if @pmodulo.save
        format.html { redirect_to @pmodulo, notice: 'Pmodulo was successfully created.' }
        format.json { render :show, status: :created, location: @pmodulo }
      else
        format.html { render :new }
        format.json { render json: @pmodulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmodulos/1
  # PATCH/PUT /pmodulos/1.json
  def update
    respond_to do |format|
      if @pmodulo.update(pmodulo_params)
        format.html { redirect_to @pmodulo, notice: 'Pmodulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmodulo }
      else
        format.html { render :edit }
        format.json { render json: @pmodulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmodulos/1
  # DELETE /pmodulos/1.json
  def destroy
    @pmodulo.destroy
    respond_to do |format|
      format.html { redirect_to pmodulos_url, notice: 'Pmodulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmodulo
      @pmodulo = Pmodulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmodulo_params
      params.require(:pmodulo).permit(:proyecto_id, :modulo_id)
    end
end
