class MmaquinasController < ApplicationController
  before_action :set_mmaquina, only: [:show, :edit, :update, :destroy]

  # GET /mmaquinas
  # GET /mmaquinas.json
  def index
    @mmaquinas = Mmaquina.all
  end

  # GET /mmaquinas/1
  # GET /mmaquinas/1.json
  def show
  end

  # GET /mmaquinas/new
  def new
    @mmaquina = Mmaquina.new
  end

  # GET /mmaquinas/1/edit
  def edit
  end

  # POST /mmaquinas
  # POST /mmaquinas.json
  def create
    @mmaquina = Mmaquina.new(mmaquina_params)

    respond_to do |format|
      if @mmaquina.save
        format.html { redirect_to @mmaquina, notice: 'Mmaquina was successfully created.' }
        format.json { render :show, status: :created, location: @mmaquina }
      else
        format.html { render :new }
        format.json { render json: @mmaquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mmaquinas/1
  # PATCH/PUT /mmaquinas/1.json
  def update
    respond_to do |format|
      if @mmaquina.update(mmaquina_params)
        format.html { redirect_to @mmaquina, notice: 'Mmaquina was successfully updated.' }
        format.json { render :show, status: :ok, location: @mmaquina }
      else
        format.html { render :edit }
        format.json { render json: @mmaquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mmaquinas/1
  # DELETE /mmaquinas/1.json
  def destroy
    @mmaquina.destroy
    respond_to do |format|
      format.html { redirect_to mmaquinas_url, notice: 'Mmaquina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mmaquina
      @mmaquina = Mmaquina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mmaquina_params
      params.require(:mmaquina).permit(:pmodulo_id, :maquina_id)
    end
end
