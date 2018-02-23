class LophsController < ApplicationController
  before_action :set_loph, only: [:show, :edit, :update, :destroy]
   skip_before_action :verify_authenticity_token

  # GET /lophs
  # GET /lophs.json
  def index
    @lophs = Loph.all
    respond_to do |format|
      format.html
      format.json { render json: @lophs}
    end
  end

  # GET /lophs/1
  # GET /lophs/1.json
  def show
  end

  # GET /lophs/new
  def new
    @loph = Loph.new
  end

  # GET /lophs/1/edit
  def edit
  end

  # POST /lophs
  # POST /lophs.json
  def create
    @loph = Loph.new(loph_params)

    respond_to do |format|
      if @loph.save
        format.html { redirect_to @loph, notice: 'Loph was successfully created.' }
        format.json { render :show, status: :created, location: @loph }
      else
        format.html { render :new }
        format.json { render json: @loph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lophs/1
  # PATCH/PUT /lophs/1.json
  def update
    respond_to do |format|
      if @loph.update(loph_params)
        format.html { redirect_to @loph, notice: 'Loph was successfully updated.' }
        format.json { render :show, status: :ok, location: @loph }
      else
        format.html { render :edit }
        format.json { render json: @loph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lophs/1
  # DELETE /lophs/1.json
  def destroy
    
    @loph.destroy
    respond_to do |format|
      format.html { redirect_to lophs_url, notice: 'Loph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loph
      @loph = Loph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loph_params
      params.require(:loph).permit(:malop, :tengv, :siso, :tenmh)
    end
end
