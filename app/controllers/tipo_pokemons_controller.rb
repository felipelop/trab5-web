class TipoPokemonsController < ApplicationController
  before_action :set_tipo_pokemon, only: [:show, :edit, :update, :destroy]

  # GET /tipo_pokemons
  # GET /tipo_pokemons.json
  def index
    @tipo_pokemons = TipoPokemon.all
  end

  # GET /tipo_pokemons/1
  # GET /tipo_pokemons/1.json
  def show
  end

  # GET /tipo_pokemons/new
  def new
    @tipo_pokemon = TipoPokemon.new
  end

  # GET /tipo_pokemons/1/edit
  def edit
  end

  # POST /tipo_pokemons
  # POST /tipo_pokemons.json
  def create
    @tipo_pokemon = TipoPokemon.new(tipo_pokemon_params)

    respond_to do |format|
      if @tipo_pokemon.save
        format.html { redirect_to @tipo_pokemon, notice: 'Tipo pokemon was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_pokemon }
      else
        format.html { render :new }
        format.json { render json: @tipo_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_pokemons/1
  # PATCH/PUT /tipo_pokemons/1.json
  def update
    respond_to do |format|
      if @tipo_pokemon.update(tipo_pokemon_params)
        format.html { redirect_to @tipo_pokemon, notice: 'Tipo pokemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_pokemon }
      else
        format.html { render :edit }
        format.json { render json: @tipo_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_pokemons/1
  # DELETE /tipo_pokemons/1.json
  def destroy
    @tipo_pokemon.destroy
    respond_to do |format|
      format.html { redirect_to tipo_pokemons_url, notice: 'Tipo pokemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_pokemon
      @tipo_pokemon = TipoPokemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_pokemon_params
      params.require(:tipo_pokemon).permit(:tipo_id, :pokemon_id)
    end
end
