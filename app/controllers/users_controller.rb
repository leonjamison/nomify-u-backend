class UsersController < ApplicationController

    def index
        user = User.all
        render json: user 
    end
    

    def new
        user = User.new 
    end

    def create
        user = User.create(user_strong_params)
        if user.valid?
            render json: {user: user}, status: :created 
        else 
            render json: {errors: user.errors.full_messages},
            status: :not_acceptable
        end
    end

private

    def user_strong_params
    params.require(:user).permit(:name)
    end

    
end
