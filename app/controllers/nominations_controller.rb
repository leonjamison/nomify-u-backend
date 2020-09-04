class NominationsController < ApplicationController

    def index
        nominations = Nomination.all
        render json: nominations
    end

    def show
        nomination = Nomination.find(params[:id])
        render json: nomination
    end

    def new
        nomination = Nomination.new 
    end

    def create
        nomination = Nomination.create(nomination_strong_params)
        render json: nomination 
    end

    def destroy
     nomination = Nomination.find(params[:id])
     nomination.destroy
    end
    
private

    def nomination_strong_params
        params.require(:nomination).permit(:user_id, :Poster, :Title, :Year, :api_movieKey)
    end


end
