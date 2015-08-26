class EstadoprosController < ApplicationController
  before_action :set_estadopro, only: [:show, :edit, :update, :destroy]

  # GET /estadopros
  # GET /estadopros.json
  def index
    @estadopros = Estadopro.all
  end

  # GET /estadopros/1
  # GET /estadopros/1.json
  def show
  end

  # GET /estadopros/new
  def new
    @estadopro = Estadopro.new
  end

  # GET /estadopros/1/edit
  def edit
  end

  # POST /estadopros
  # POST /estadopros.json
  def create
    @estadopro = Estadopro.new(estadopro_params)

    respond_to do |format|
      if @estadopro.save
        format.html { redirect_to @estadopro, notice: 'Estadopro was successfully created.' }
        format.json { render :show, status: :created, location: @estadopro }
      else
        format.html { render :new }
        format.json { render json: @estadopro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadopros/1
  # PATCH/PUT /estadopros/1.json
  def update
    respond_to do |format|
      if @estadopro.update(estadopro_params)
        format.html { redirect_to @estadopro, notice: 'Estadopro was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadopro }
      else
        format.html { render :edit }
        format.json { render json: @estadopro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadopros/1
  # DELETE /estadopros/1.json
  def destroy
    @estadopro.destroy
    respond_to do |format|
      format.html { redirect_to estadopros_url, notice: 'Estadopro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadopro
      @estadopro = Estadopro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadopro_params
      params.require(:estadopro).permit(:estado)
    end
end
