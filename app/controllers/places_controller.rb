class PlacesController < ApplicationController


  def index
    @places = Place.all
  end

  # get "/places", to: "places#new", as: "new_place"
  def new
    render :new
  end
  # post "/places", to: "places#create"


  # get "/places/:id", to: "places#show", as: "place"
  def create
    place_params = params.require(:place).permit(:name, :city, :address, :hours, :phone, :url, :about)
    @place = Place.create(place_params)
    redirect_to place


  end

  # get "/places/:id", to: "places#edit", as: "edit_place"
  def show
    @place = Place.find(params[:id])
    
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
