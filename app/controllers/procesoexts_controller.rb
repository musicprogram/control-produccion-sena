class ProcesoextsController < ApplicationController
  before_action :set_procesoext, only: [:show, :edit, :update, :destroy]

  # GET /procesoexts
  # GET /procesoexts.json
  def index
    @procesoexts = Procesoext.all
  end

  # GET /procesoexts/1
  # GET /procesoexts/1.json
  def show
  end

  # GET /procesoexts/new
  def new
    @procesoext = Procesoext.new
  end

  # GET /procesoexts/1/edit
  def edit
  end

  # POST /procesoexts
  # POST /procesoexts.json
  def create
    @procesoext = Procesoext.new(procesoext_params)

    respond_to do |format|
      if @procesoext.save
        format.html { redirect_to @procesoext, notice: 'Procesoext was successfully created.' }
        format.json { render :show, status: :created, location: @procesoext }
      else
        format.html { render :new }
        format.json { render json: @procesoext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procesoexts/1
  # PATCH/PUT /procesoexts/1.json
  def update
    respond_to do |format|
      if @procesoext.update(procesoext_params)
        format.html { redirect_to @procesoext, notice: 'Procesoext was successfully updated.' }
        format.json { render :show, status: :ok, location: @procesoext }
      else
        format.html { render :edit }
        format.json { render json: @procesoext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procesoexts/1
  # DELETE /procesoexts/1.json
  def destroy
    @procesoext.destroy
    respond_to do |format|
      format.html { redirect_to procesoexts_url, notice: 'Procesoext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procesoext
      @procesoext = Procesoext.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procesoext_params
      params.require(:procesoext).permit(:nombre)
    end
end
