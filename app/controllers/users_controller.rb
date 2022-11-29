class UsersController < ApplicationController
    #GET  /users/:id
    def show
        user = User.find_by(id: params[:id])
        render json: user, include: :items, status: :ok
    end
end
