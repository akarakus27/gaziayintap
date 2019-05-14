class UrunsController < ApplicationController
  before_action :set_urun, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  # GET /uruns
  # GET /uruns.json
  def index
    @uruns = Urun.all
  end

  # GET /uruns/1
  # GET /uruns/1.json
  def show
  end

  # GET /uruns/new
  def new
    @urun = Urun.new
  end

  # GET /uruns/1/edit
  def edit
  end

  # POST /uruns
  # POST /uruns.json
  def create
    @urun = Urun.new(urun_params)

    respond_to do |format|
      if @urun.save
        format.html { redirect_to @urun, notice: 'Urun was successfully created.' }
        format.json { render :show, status: :created, location: @urun }
      else
        format.html { render :new }
        format.json { render json: @urun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uruns/1
  # PATCH/PUT /uruns/1.json
  def update
    respond_to do |format|
      if @urun.update(urun_params)
        format.html { redirect_to @urun, notice: 'Urun was successfully updated.' }
        format.json { render :show, status: :ok, location: @urun }
      else
        format.html { render :edit }
        format.json { render json: @urun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uruns/1
  # DELETE /uruns/1.json
  def destroy
    @urun.destroy
    respond_to do |format|
      format.html { redirect_to uruns_url, notice: 'Urun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urun
      @urun = Urun.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def urun_params
      params.require(:urun).permit(:baslik, :aciklama, :fiyat, :resim)
    end
end
