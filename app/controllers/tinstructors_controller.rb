class TinstructorsController < ApplicationController
  before_action :set_tinstructor, only: [:show, :edit, :update, :destroy]

  # GET /tinstructors
  # GET /tinstructors.json
  def index
    @tinstructors = Tinstructor.all
  end

  # GET /tinstructors/1
  # GET /tinstructors/1.json
  def show
  end

  # GET /tinstructors/new
  def new
    @tinstructor = Tinstructor.new
  end

  # GET /tinstructors/1/edit
  def edit
  end

  # POST /tinstructors
  # POST /tinstructors.json
  def create
    @tinstructor = Tinstructor.new(tinstructor_params)

    respond_to do |format|
      if @tinstructor.save
        format.html { redirect_to @tinstructor, notice: 'Tinstructor was successfully created.' }
        format.json { render :show, status: :created, location: @tinstructor }
      else
        format.html { render :new }
        format.json { render json: @tinstructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tinstructors/1
  # PATCH/PUT /tinstructors/1.json
  def update
    respond_to do |format|
      if @tinstructor.update(tinstructor_params)
        format.html { redirect_to @tinstructor, notice: 'Tinstructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @tinstructor }
      else
        format.html { render :edit }
        format.json { render json: @tinstructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tinstructors/1
  # DELETE /tinstructors/1.json
  def destroy
    @tinstructor.destroy
    respond_to do |format|
      format.html { redirect_to tinstructors_url, notice: 'Tinstructor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tinstructor
      @tinstructor = Tinstructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tinstructor_params
      params.require(:tinstructor).permit(:pturno_id, :instructor_id)
    end
end
