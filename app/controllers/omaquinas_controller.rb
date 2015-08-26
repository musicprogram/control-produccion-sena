class OmaquinasController < ApplicationController
  before_action :set_omaquina, only: [:show, :edit, :update, :destroy]

  # GET /omaquinas
  # GET /omaquinas.json
  def index
    @omaquinas = Omaquina.all
  end

  # GET /omaquinas/1
  # GET /omaquinas/1.json
  def show
  end

  # GET /omaquinas/new
  def new
    @omaquina = Omaquina.new
  end

  # GET /omaquinas/1/edit
  def edit
  end

  # POST /omaquinas
  # POST /omaquinas.json
  def create
    @omaquina = Omaquina.new(omaquina_params)

    respond_to do |format|
      if @omaquina.save
        format.html { redirect_to @omaquina, notice: 'Omaquina was successfully created.' }
        format.json { render :show, status: :created, location: @omaquina }
      else
        format.html { render :new }
        format.json { render json: @omaquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /omaquinas/1
  # PATCH/PUT /omaquinas/1.json
  def update
    respond_to do |format|
      if @omaquina.update(omaquina_params)
        format.html { redirect_to @omaquina, notice: 'Omaquina was successfully updated.' }
        format.json { render :show, status: :ok, location: @omaquina }
      else
        format.html { render :edit }
        format.json { render json: @omaquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /omaquinas/1
  # DELETE /omaquinas/1.json
  def destroy
    @omaquina.destroy
    respond_to do |format|
      format.html { redirect_to omaquinas_url, notice: 'Omaquina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_omaquina
      @omaquina = Omaquina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def omaquina_params
      params.require(:omaquina).permit(:moperario_id, :maquina_id)
    end
end
