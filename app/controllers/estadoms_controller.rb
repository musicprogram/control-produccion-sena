class EstadomsController < ApplicationController
  before_action :set_estadom, only: [:show, :edit, :update, :destroy]

  # GET /estadoms
  # GET /estadoms.json
  def index
    @estadoms = Estadom.all
  end

  # GET /estadoms/1
  # GET /estadoms/1.json
  def show
  end

  # GET /estadoms/new
  def new
    @estadom = Estadom.new
  end

  # GET /estadoms/1/edit
  def edit
  end

  # POST /estadoms
  # POST /estadoms.json
  def create
    @estadom = Estadom.new(estadom_params)

    respond_to do |format|
      if @estadom.save
        format.html { redirect_to @estadom, notice: 'Estadom was successfully created.' }
        format.json { render :show, status: :created, location: @estadom }
      else
        format.html { render :new }
        format.json { render json: @estadom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadoms/1
  # PATCH/PUT /estadoms/1.json
  def update
    respond_to do |format|
      if @estadom.update(estadom_params)
        format.html { redirect_to @estadom, notice: 'Estadom was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadom }
      else
        format.html { render :edit }
        format.json { render json: @estadom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadoms/1
  # DELETE /estadoms/1.json
  def destroy
    @estadom.destroy
    respond_to do |format|
      format.html { redirect_to estadoms_url, notice: 'Estadom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadom
      @estadom = Estadom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadom_params
      params.require(:estadom).permit(:titulo, :descripcion)
    end
end
