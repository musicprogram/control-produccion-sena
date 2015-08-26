class PturnosController < ApplicationController
  before_action :set_pturno, only: [:show, :edit, :update, :destroy]

  # GET /pturnos
  # GET /pturnos.json
  def index
    @pturnos = Pturno.all
  end

  # GET /pturnos/1
  # GET /pturnos/1.json
  def show
  end

  # GET /pturnos/new
  def new
    @pturno = Pturno.new
  end

  # GET /pturnos/1/edit
  def edit
  end

  # POST /pturnos
  # POST /pturnos.json
  def create
    @pturno = Pturno.new(pturno_params)

    respond_to do |format|
      if @pturno.save
        format.html { redirect_to @pturno, notice: 'Pturno was successfully created.' }
        format.json { render :show, status: :created, location: @pturno }
      else
        format.html { render :new }
        format.json { render json: @pturno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pturnos/1
  # PATCH/PUT /pturnos/1.json
  def update
    respond_to do |format|
      if @pturno.update(pturno_params)
        format.html { redirect_to @pturno, notice: 'Pturno was successfully updated.' }
        format.json { render :show, status: :ok, location: @pturno }
      else
        format.html { render :edit }
        format.json { render json: @pturno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pturnos/1
  # DELETE /pturnos/1.json
  def destroy
    @pturno.destroy
    respond_to do |format|
      format.html { redirect_to pturnos_url, notice: 'Pturno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pturno
      @pturno = Pturno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pturno_params
      params.require(:pturno).permit(:proyecto_id, :turno_id)
    end
end
