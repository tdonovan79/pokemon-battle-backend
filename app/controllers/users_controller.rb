class UsersController < ApplicationController
    def index
        user = User.all 
        render json: user, include: 'pokemons' # NO SUCH COLUMN POKEMON USERS ID
    end

    def create
        user = User.create(params.require(:user).permit(:name))
        render json: user
    end
end
