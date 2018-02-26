

class SinhviensController < ApplicationController
  before_action :set_sinhvien, only: [:show, :edit, :update, :destroy]
   skip_before_action :verify_authenticity_token
  # require 'pry'
  # GET /sinhviens
  # GET /sinhviens.json
  def index
    @sinhviens = Sinhvien.all
  end

  # GET /sinhviens/1
  # GET /sinhviens/1.json
  def show
    @loph=Loph.find(@sinhvien.loph_id)
  end

  # GET /sinhviens/new
  def new
    @sinhvien = Sinhvien.new
  end

  # GET /sinhviens/1/edit
  def edit
  end

  # POST /sinhviens
  # POST /sinhviens.json
  def create
    @id_lop = Loph.find_by(malop: params['malop']).id
    @sinhvien = Sinhvien.new(loph_id: @id_lop, hoten: params['hoten'], namsinh: params['namsinh'],diachi: params['diachi'],hinh: "")


    respond_to do |format|
      if @sinhvien.save
        format.html { redirect_to @sinhvien, notice: 'Sinhvien was successfully created.' }
        format.json { render :show, status: :created, location: @sinhvien }
      else
        format.html { render :new }
        format.json { render json: @sinhvien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sinhviens/1
  # PATCH/PUT /sinhviens/1.json
  def update
    respond_to do |format|
      if @sinhvien.update(sinhvien_params)
        format.html { redirect_to @sinhvien, notice: 'Sinhvien was successfully updated.' }
        format.json { render :show, status: :ok, location: @sinhvien }
      else
        format.html { render :edit }
        format.json { render json: @sinhvien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sinhviens/1
  # DELETE /sinhviens/1.json
  def destroy
    @sinhvien.destroy
    respond_to do |format|
      format.html { redirect_to sinhviens_url, notice: 'Sinhvien was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sinhvien
      @sinhvien = Sinhvien.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sinhvien_params
      params.require(:sinhvien).permit(:hoten, :namsinh, :diachi, :hinh, :image, :loph_id)
    end
end
