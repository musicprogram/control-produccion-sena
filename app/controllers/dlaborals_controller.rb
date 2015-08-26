class DlaboralsController < ApplicationController
  before_action :set_dlaboral, only: [:show, :edit, :update, :destroy]

  # GET /dlaborals
  # GET /dlaborals.json
  def index
    @dlaborals = Dlaboral.all
  end

  # GET /dlaborals/1
  # GET /dlaborals/1.json
  def show
  end

  # GET /dlaborals/new
  def new
    @dlaboral = Dlaboral.new
  end

  # GET /dlaborals/1/edit
  def edit
  end

  # POST /dlaborals
  # POST /dlaborals.json
  def create
    @dlaboral = Dlaboral.new(dlaboral_params)

    respond_to do |format|
      if @dlaboral.save
        format.html { redirect_to @dlaboral, notice: 'Dlaboral was successfully created.' }
        format.json { render :show, status: :created, location: @dlaboral }
      else
        format.html { render :new }
        format.json { render json: @dlaboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dlaborals/1
  # PATCH/PUT /dlaborals/1.json
  def update
    respond_to do |format|
      if @dlaboral.update(dlaboral_params)
        format.html { redirect_to @dlaboral, notice: 'Dlaboral was successfully updated.' }
        format.json { render :show, status: :ok, location: @dlaboral }
      else
        format.html { render :edit }
        format.json { render json: @dlaboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dlaborals/1
  # DELETE /dlaborals/1.json
  def destroy
    @dlaboral.destroy
    respond_to do |format|
      format.html { redirect_to dlaborals_url, notice: 'Dlaboral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dlaboral
      @dlaboral = Dlaboral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dlaboral_params
      params.require(:dlaboral).permit(:dias_año, :domingos, :festivos, :vacaciones, :total_dias)
    end
end
