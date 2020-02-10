class PokemonsController < ApplicationController

    def create
        passed_in = params.require(:pokemon).permit(:name, :types, :user_id, :front_default, :back_default)
        pokemon = Pokemon.create(name: passed_in[:name], user_id: passed_in[:user_id], front_default: passed_in[:front_default], back_default: passed_in[:back_default])
        params[:types].each do |type|
            name = type[:type][:name].capitalize
            PokemonType.create(pokemon: pokemon, type: Type.find_by(name: name))
        end
        render :json => JSON::parse(pokemon.to_json).merge(pokemon.types_and_moves).to_json
    end

    def delete
        pokemon = Pokemon.find(params[:id])
        pokemon.destroy
        render json: pokemon
    end
end
