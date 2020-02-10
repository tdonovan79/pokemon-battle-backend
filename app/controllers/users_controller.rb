class UsersController < ApplicationController
    def index
        user = User.all 
        render json: user, include: [:pokemons] # NO SUCH COLUMN POKEMON USERS ID
    end
end
