class UsersController < ApplicationController

    def index
        user = User.all
        render json: user 
    end
    

    def new
        user = User.new 
    end

    def create
        user = User.create 
        render json: user
    end

private

    def user_strong_params
    params.require(:user).permit(:name)
    end

    
end
