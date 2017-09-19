class PlacesController < ApplicationController


  def index
    @places = Place.all
  end

  # get "/places", to: "places#new", as: "new_place"
  def new
    if session[:user_id]
      @place = Place.new
      @cities = City.all
    else
      flash[:error] = "Please login or create an account"
      redirect_to places_path

    end
  end
  # post "/places", to: "places#create"


  # get "/places/:id", to: "places#show", as: "place"
  def create
    place_params = params.require(:place).permit(:name, :city_id, :address, :hours, :phone, :url, :about)
    user_id = session[:user_id]
    @user = User.find_by_id user_id
    @place = Place.new(place_params)
    @place.user_id = @user.id
    @city = City.find_by_id(params[:id])

    if @place.save
      redirect_to place_path @place
    else
      flash[:error] = "Didn't save"
      render :index
    end

  end

  def show
    @place = Place.find(params[:id])
  end

  def edit
    #@place = Place.find_by_id id@
    @place = Place.find(params[:id])
    #place_params = params.require(:place).permit(:name, :city_id, :address, :hours, :phone, :url, :about)
    user_id = session[:user_id]
    @user = User.find_by_id user_id
    @place.user_id = @user.id
    @city = City.find_by_id(params[:id])
    @cities = City.all

  end

  # patch "/places/:id", to: "places#update", as: "update_place"
  def update
    @place = Place.find(params[:id])
    place_params = params.require(:place).permit(:name, :city_id, :address, :hours, :phone, :url, :about)
    user_id = session[:user_id]
    @user = User.find_by_id user_id
    @place.user_id = @user.id
    @city = City.find_by_id(params[:id])
    @place.update_attributes(place_params)
    @cities = City.all
    redirect_to place_path
  end

  # delete "/places/:id", to: "places#destroy", as: "delete_place"
  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end

end
