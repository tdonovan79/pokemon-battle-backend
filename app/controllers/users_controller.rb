class UsersController < ApplicationController
    def index
        user = User.all 
        render json: user
    end

    def create
        user = User.create(params.require(:user).permit(:name))
        render json: user
    end
end
