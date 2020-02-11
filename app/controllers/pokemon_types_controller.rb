class PokemonTypesController < ApplicationController
    def index
        pokemon = PokemonType.all 
        render json: pokemon
    end

    def show
        pokemon = PokemonType.find_by(id: params[:id])
        render json: pokemon
    end
end
