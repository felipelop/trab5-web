class TreinadorsController < ApplicationController
  before_action :set_treinador, only: [:show, :edit, :update, :destroy]

  # GET /treinadors
  # GET /treinadors.json
  def index
    @treinadors = Treinador.all
  end

  # GET /treinadors/1
  # GET /treinadors/1.json
  def show
  end

  # GET /treinadors/new
  def new
    @treinador = Treinador.new
  end

  # GET /treinadors/1/edit
  def edit
  end

  # POST /treinadors
  # POST /treinadors.json
  def create
    @treinador = Treinador.new(treinador_params)

    respond_to do |format|
      if @treinador.save
        format.html { redirect_to @treinador, notice: 'Treinador was successfully created.' }
        format.json { render :show, status: :created, location: @treinador }
      else
        format.html { render :new }
        format.json { render json: @treinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treinadors/1
  # PATCH/PUT /treinadors/1.json
  def update
    respond_to do |format|
      if @treinador.update(treinador_params)
        format.html { redirect_to @treinador, notice: 'Treinador was successfully updated.' }
        format.json { render :show, status: :ok, location: @treinador }
      else
        format.html { render :edit }
        format.json { render json: @treinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treinadors/1
  # DELETE /treinadors/1.json
  def destroy
    @treinador.destroy
    respond_to do |format|
      format.html { redirect_to treinadors_url, notice: 'Treinador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treinador
      @treinador = Treinador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treinador_params
      params.require(:treinador).permit(:nome, :regiao, :pokebolas, :insignias)
    end
end
