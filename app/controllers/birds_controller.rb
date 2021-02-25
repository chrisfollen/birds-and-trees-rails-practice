class BirdsController < ApplicationController

    def index 
        @birds = Bird.all

        render json: @birds, include: [:tree]
    end

    def show
        @bird = Bird.find(params[:id])

        render json: @bird, include: [:tree]
    end

    def create
        @bird = Bird.create(
            name: params[:name],
            color: params[:color],
            tree_id: params[:tree_id]
        )

        render json: @bird
    end

    def update 
        @bird = Bird.find(params[:id])
        @bird.update(
            name: params[:name],
            color: params[:color],
            tree_id: params[:tree_id]
        )

        render json: @bird
    end

    def destroy 
        @bird = Bird.find(params[:id])
        @bird.destroy      

    end
end
