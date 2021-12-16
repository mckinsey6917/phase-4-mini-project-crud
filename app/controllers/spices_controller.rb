class SpicesController < ApplicationController

    #GET /spices SELECT
    def index
        spices = Spice.all 
        render json: spices
    end

    #POST /spices *INSERT INTO
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    #PATCH /spices/:id UPDATE spices SET title WHERE ?=placeholder
    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
    end

    #DELETE /spices/:id 
    def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
        head :no_content
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
