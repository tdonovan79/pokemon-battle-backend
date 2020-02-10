class PokemonsController < ApplicationController

    def create
        Pokemon.create(params.require(:pokemon.permit(:name, :type)))
        render json:
    end

    def delete
        pokemon = Pokemon.find(params[:id])
        pokemon.destroy
        render json:
    end
end
