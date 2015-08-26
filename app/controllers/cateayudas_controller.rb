class CateayudasController < ApplicationController
  before_action :set_cateayuda, only: [:show, :edit, :update, :destroy]

  # GET /cateayudas
  # GET /cateayudas.json
  def index
    @cateayudas = Cateayuda.all
  end

  # GET /cateayudas/1
  # GET /cateayudas/1.json
  def show
  end

  # GET /cateayudas/new
  def new
    @cateayuda = Cateayuda.new
  end

  # GET /cateayudas/1/edit
  def edit
  end

  # POST /cateayudas
  # POST /cateayudas.json
  def create
    @cateayuda = Cateayuda.new(cateayuda_params)

    respond_to do |format|
      if @cateayuda.save
        format.html { redirect_to @cateayuda, notice: 'Cateayuda was successfully created.' }
        format.json { render :show, status: :created, location: @cateayuda }
      else
        format.html { render :new }
        format.json { render json: @cateayuda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cateayudas/1
  # PATCH/PUT /cateayudas/1.json
  def update
    respond_to do |format|
      if @cateayuda.update(cateayuda_params)
        format.html { redirect_to @cateayuda, notice: 'Cateayuda was successfully updated.' }
        format.json { render :show, status: :ok, location: @cateayuda }
      else
        format.html { render :edit }
        format.json { render json: @cateayuda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cateayudas/1
  # DELETE /cateayudas/1.json
  def destroy
    @cateayuda.destroy
    respond_to do |format|
      format.html { redirect_to cateayudas_url, notice: 'Cateayuda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cateayuda
      @cateayuda = Cateayuda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cateayuda_params
      params.require(:cateayuda).permit(:nombre)
    end
end
