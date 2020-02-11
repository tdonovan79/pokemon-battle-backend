class TypesController < ApplicationController
    def index
        type = Type.all 
        render json: type
    end

    def show
        type = Type.find_by(id: params[:id])
        render json: type
    end
end
