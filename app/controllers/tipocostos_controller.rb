class TipocostosController < ApplicationController
  before_action :set_tipocosto, only: [:show, :edit, :update, :destroy]

  # GET /tipocostos
  # GET /tipocostos.json
  def index
    @tipocostos = Tipocosto.all
  end

  # GET /tipocostos/1
  # GET /tipocostos/1.json
  def show
  end

  # GET /tipocostos/new
  def new
    @tipocosto = Tipocosto.new
  end

  # GET /tipocostos/1/edit
  def edit
  end

  # POST /tipocostos
  # POST /tipocostos.json
  def create
    @tipocosto = Tipocosto.new(tipocosto_params)

    respond_to do |format|
      if @tipocosto.save
        format.html { redirect_to @tipocosto, notice: 'Tipocosto was successfully created.' }
        format.json { render :show, status: :created, location: @tipocosto }
      else
        format.html { render :new }
        format.json { render json: @tipocosto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipocostos/1
  # PATCH/PUT /tipocostos/1.json
  def update
    respond_to do |format|
      if @tipocosto.update(tipocosto_params)
        format.html { redirect_to @tipocosto, notice: 'Tipocosto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipocosto }
      else
        format.html { render :edit }
        format.json { render json: @tipocosto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipocostos/1
  # DELETE /tipocostos/1.json
  def destroy
    @tipocosto.destroy
    respond_to do |format|
      format.html { redirect_to tipocostos_url, notice: 'Tipocosto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipocosto
      @tipocosto = Tipocosto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipocosto_params
      params.require(:tipocosto).permit(:nombre, :descripcion)
    end
end
