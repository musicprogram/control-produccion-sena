class EspecificacionsController < ApplicationController
  before_action :set_especificacion, only: [:show, :edit, :update, :destroy]

  # GET /especificacions
  # GET /especificacions.json
  def index
    @especificacions = Especificacion.all
  end

  # GET /especificacions/1
  # GET /especificacions/1.json
  def show
  end

  # GET /especificacions/new
  def new
    @especificacion = Especificacion.new
  end

  # GET /especificacions/1/edit
  def edit
  end

  # POST /especificacions
  # POST /especificacions.json
  def create
    @especificacion = Especificacion.new(especificacion_params)

    respond_to do |format|
      if @especificacion.save
        format.html { redirect_to @especificacion, notice: 'Especificacion was successfully created.' }
        format.json { render :show, status: :created, location: @especificacion }
      else
        format.html { render :new }
        format.json { render json: @especificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especificacions/1
  # PATCH/PUT /especificacions/1.json
  def update
    respond_to do |format|
      if @especificacion.update(especificacion_params)
        format.html { redirect_to @especificacion, notice: 'Especificacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @especificacion }
      else
        format.html { render :edit }
        format.json { render json: @especificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especificacions/1
  # DELETE /especificacions/1.json
  def destroy
    @especificacion.destroy
    respond_to do |format|
      format.html { redirect_to especificacions_url, notice: 'Especificacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especificacion
      @especificacion = Especificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def especificacion_params
      params.require(:especificacion).permit(:descripcion)
    end
end
