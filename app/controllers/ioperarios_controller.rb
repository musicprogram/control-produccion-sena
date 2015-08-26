class IoperariosController < ApplicationController
  before_action :set_ioperario, only: [:show, :edit, :update, :destroy]

  # GET /ioperarios
  # GET /ioperarios.json
  def index
    @ioperarios = Ioperario.all
  end

  # GET /ioperarios/1
  # GET /ioperarios/1.json
  def show
  end

  # GET /ioperarios/new
  def new
    @ioperario = Ioperario.new
  end

  # GET /ioperarios/1/edit
  def edit
  end

  # POST /ioperarios
  # POST /ioperarios.json
  def create
    @ioperario = Ioperario.new(ioperario_params)

    respond_to do |format|
      if @ioperario.save
        format.html { redirect_to @ioperario, notice: 'Ioperario was successfully created.' }
        format.json { render :show, status: :created, location: @ioperario }
      else
        format.html { render :new }
        format.json { render json: @ioperario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ioperarios/1
  # PATCH/PUT /ioperarios/1.json
  def update
    respond_to do |format|
      if @ioperario.update(ioperario_params)
        format.html { redirect_to @ioperario, notice: 'Ioperario was successfully updated.' }
        format.json { render :show, status: :ok, location: @ioperario }
      else
        format.html { render :edit }
        format.json { render json: @ioperario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ioperarios/1
  # DELETE /ioperarios/1.json
  def destroy
    @ioperario.destroy
    respond_to do |format|
      format.html { redirect_to ioperarios_url, notice: 'Ioperario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ioperario
      @ioperario = Ioperario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ioperario_params
      params.require(:ioperario).permit(:tinstructor_id, :operario_id)
    end
end
