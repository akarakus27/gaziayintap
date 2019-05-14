class FaydalarsController < ApplicationController
  before_action :set_faydalar, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy] 

  # GET /faydalars
  # GET /faydalars.json
  def index
    @faydalars = Faydalar.all
  end

  # GET /faydalars/1
  # GET /faydalars/1.json
  def show
  end

  # GET /faydalars/new
  def new
    @faydalar = Faydalar.new
  end

  # GET /faydalars/1/edit
  def edit
  end

  # POST /faydalars
  # POST /faydalars.json
  def create
    @faydalar = Faydalar.new(faydalar_params)

    respond_to do |format|
      if @faydalar.save
        format.html { redirect_to @faydalar, notice: 'Faydalar was successfully created.' }
        format.json { render :show, status: :created, location: @faydalar }
      else
        format.html { render :new }
        format.json { render json: @faydalar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faydalars/1
  # PATCH/PUT /faydalars/1.json
  def update
    respond_to do |format|
      if @faydalar.update(faydalar_params)
        format.html { redirect_to @faydalar, notice: 'Faydalar was successfully updated.' }
        format.json { render :show, status: :ok, location: @faydalar }
      else
        format.html { render :edit }
        format.json { render json: @faydalar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faydalars/1
  # DELETE /faydalars/1.json
  def destroy
    @faydalar.destroy
    respond_to do |format|
      format.html { redirect_to faydalars_url, notice: 'Faydalar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faydalar
      @faydalar = Faydalar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faydalar_params
      params.require(:faydalar).permit(:baslik, :aciklama, :resim)
    end
end
