class PlacesController < ApplicationController

  # get "/places", to: "places#new", as: "new_place"
  def index
    @places = Place.all
  end

  # post "/places", to: "places#create"
  def new
    if session[:user_id]
      @place = Place.new
      @place_length = 0
    else
      flash[:error] = "To add a new place, please create an account or sign up."
      redirect_to new_user_path
    end
  end

  # get "/places/:id", to: "places#show", as: "place"
  def create
    place_params = params.require(:place).permit(:)
  end

  # get "/places/:id", to: "places#edit", as: "edit_place"
  def show
    @place = Place.find_by_id(params[:place_id])
  end

  # patch "/places/:id", to: "places#update", as: "update_place"
  def edit
    @place = Place.find_by_id(params[:place_id])
  end

  def update
    place_params = params.require
  end
  
  # delete "/places/:id", to: "places#destroy", as: "delete_place"
  def destroy
    place = Place.find_by_id(params[:place_id])
    place.destroy
    redirect_to root
  end

end
