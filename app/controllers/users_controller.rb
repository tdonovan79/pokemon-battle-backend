class UsersController < ApplicationController
    def index
        user = User.all 
        render json: user, include: [:pokemons] # NO SUCH COLUMN POKEMON USERS ID
    end

    def create
        User.create(params.require(:user.permit(:name)))
        render json:
    end
end
