class CitiesController < ApplicationController

  def index
    @cities = Cities.all
  end

  #get "/cities", to: "cities#new", as: "new_city"
  def new
    @city = City.new
    redirect_to new_city
  end
  #post "/cities", to: "citites#create"
  def create
    city = Post.new(city_params)
    city.user_id = user_id
    if city.save
      redirect_to user_path user.username
  end
  #get "/cities/:id", to: "cities#show", as:"city"
  def show
    @city = City.find_by_id(params[:city_id])
  end
  #get "/cities/:id/edit", to:"cities#edit", as:"edit_city"
  def update
    city_params = params.require(:city).permit(:name)
  end
  #patch "/cities/:id", to: "cities#update", as: "update_city"
  #delete "/cities/:id", to: "cities#destroy", as: "delete_city"
end
