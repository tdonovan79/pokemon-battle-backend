class TypesController < ApplicationController
    def index
        type = Type.all 
        render json: type, include: [:pokemon]
    end

    def show
        type = Type.find_by(id: params[:id])
        render json: type, include: [:pokemon] # do an INCLUDE?
    end
end
