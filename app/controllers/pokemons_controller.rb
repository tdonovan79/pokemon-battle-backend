class PokemonsController < ApplicationController

    def create
        Pokemon.create(params.require(:pokemon.permit(:name, :type)))
    end

    def delete
        pokemon = Pokemon.find(params[:id])
        pokemon.destroy
    end
end
