class PokemonTypesController < ApplicationController
    def index
        pokemon = Pokemon.all 
        render json: pokemon, include: [:type]
    end

    def show
        pokemon = Pokemon.find_by(id: params[:id])
        render json: pokemon, include: [:type] # do an INCLUDE?
    end
end
