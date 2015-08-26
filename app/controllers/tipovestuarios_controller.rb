class TipovestuariosController < ApplicationController
  before_action :set_tipovestuario, only: [:show, :edit, :update, :destroy]

  # GET /tipovestuarios
  # GET /tipovestuarios.json
  def index
    @tipovestuarios = Tipovestuario.all
  end

  # GET /tipovestuarios/1
  # GET /tipovestuarios/1.json
  def show
  end

  # GET /tipovestuarios/new
  def new
    @tipovestuario = Tipovestuario.new
  end

  # GET /tipovestuarios/1/edit
  def edit
  end

  # POST /tipovestuarios
  # POST /tipovestuarios.json
  def create
    @tipovestuario = Tipovestuario.new(tipovestuario_params)

    respond_to do |format|
      if @tipovestuario.save
        format.html { redirect_to @tipovestuario, notice: 'Tipovestuario was successfully created.' }
        format.json { render :show, status: :created, location: @tipovestuario }
      else
        format.html { render :new }
        format.json { render json: @tipovestuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipovestuarios/1
  # PATCH/PUT /tipovestuarios/1.json
  def update
    respond_to do |format|
      if @tipovestuario.update(tipovestuario_params)
        format.html { redirect_to @tipovestuario, notice: 'Tipovestuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipovestuario }
      else
        format.html { render :edit }
        format.json { render json: @tipovestuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipovestuarios/1
  # DELETE /tipovestuarios/1.json
  def destroy
    @tipovestuario.destroy
    respond_to do |format|
      format.html { redirect_to tipovestuarios_url, notice: 'Tipovestuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipovestuario
      @tipovestuario = Tipovestuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipovestuario_params
      params.require(:tipovestuario).permit(:nombre, :descripcion)
    end
end
