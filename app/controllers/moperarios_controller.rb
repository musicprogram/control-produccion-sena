class MoperariosController < ApplicationController
  before_action :set_moperario, only: [:show, :edit, :update, :destroy]

  # GET /moperarios
  # GET /moperarios.json
  def index
    @moperarios = Moperario.all
  end

  # GET /moperarios/1
  # GET /moperarios/1.json
  def show
  end

  # GET /moperarios/new
  def new
    @moperario = Moperario.new
  end

  # GET /moperarios/1/edit
  def edit
  end

  # POST /moperarios
  # POST /moperarios.json
  def create
    @moperario = Moperario.new(moperario_params)

    respond_to do |format|
      if @moperario.save
        format.html { redirect_to @moperario, notice: 'Moperario was successfully created.' }
        format.json { render :show, status: :created, location: @moperario }
      else
        format.html { render :new }
        format.json { render json: @moperario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moperarios/1
  # PATCH/PUT /moperarios/1.json
  def update
    respond_to do |format|
      if @moperario.update(moperario_params)
        format.html { redirect_to @moperario, notice: 'Moperario was successfully updated.' }
        format.json { render :show, status: :ok, location: @moperario }
      else
        format.html { render :edit }
        format.json { render json: @moperario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moperarios/1
  # DELETE /moperarios/1.json
  def destroy
    @moperario.destroy
    respond_to do |format|
      format.html { redirect_to moperarios_url, notice: 'Moperario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moperario
      @moperario = Moperario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moperario_params
      params.require(:moperario).permit(:imodulo_id, :operario_id)
    end
end
