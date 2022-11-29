class ItemsController < ApplicationController
    #GET  /items
    def index
        render json: Item.all, include: :user, status: :ok
    end

end
