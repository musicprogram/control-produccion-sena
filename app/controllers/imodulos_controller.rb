class ImodulosController < ApplicationController
  before_action :set_imodulo, only: [:show, :edit, :update, :destroy]

  # GET /imodulos
  # GET /imodulos.json
  def index
    @imodulos = Imodulo.all
  end

  # GET /imodulos/1
  # GET /imodulos/1.json
  def show
  end

  # GET /imodulos/new
  def new
    @imodulo = Imodulo.new
  end

  # GET /imodulos/1/edit
  def edit
  end

  # POST /imodulos
  # POST /imodulos.json
  def create
    @imodulo = Imodulo.new(imodulo_params)

    respond_to do |format|
      if @imodulo.save
        format.html { redirect_to @imodulo, notice: 'Imodulo was successfully created.' }
        format.json { render :show, status: :created, location: @imodulo }
      else
        format.html { render :new }
        format.json { render json: @imodulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imodulos/1
  # PATCH/PUT /imodulos/1.json
  def update
    respond_to do |format|
      if @imodulo.update(imodulo_params)
        format.html { redirect_to @imodulo, notice: 'Imodulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @imodulo }
      else
        format.html { render :edit }
        format.json { render json: @imodulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imodulos/1
  # DELETE /imodulos/1.json
  def destroy
    @imodulo.destroy
    respond_to do |format|
      format.html { redirect_to imodulos_url, notice: 'Imodulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imodulo
      @imodulo = Imodulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imodulo_params
      params.require(:imodulo).permit(:tinstructor_id, :modulo_id)
    end
end
