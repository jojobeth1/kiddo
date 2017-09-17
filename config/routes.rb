Rails.application.routes.draw do
  root to: "application#index"

  get "/about", to: "application#about"

  # Routes for Sessions
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  # Routes for User

  post "/users", to: "users#create" # Post to users db
  get "/users/:id", to:"users#show", as:"user" # show user's profile page
  get "/users/:id/edit", to: "users#edit", as: "edit_user"# Edit User Form
  patch "/users/:id", to:"users#update", as: "update_user" # patch db with new info
  delete "/users/:id", to: "users#destroy", as: "delete_user"

  # Routes for city
  get "/cities", to: "cities#new", as: "new_city" # new city Form
  post "/cities", to: "citites#create"
  get "/cities/:id", to: "cities#show", as:"city" # show city page
  get "/cities/:id/edit", to:"cities#edit", as:"edit_city" # Edit a city
  patch "/cities/:id", to: "cities#update", as: "update_city" # patch db with new info
  delete "/cities/:id", to: "cities#destroy", as: "delete_city"

  # Routes for place
  get "/places", to: "places#new", as: "new_place" # New Place Form
  post "/places", to: "places#create" # Post to places db
  get "/places/:id", to: "places#show", as: "place" # view for a place
  get "/places/:id", to: "places#edit", as: "edit_place" # edit place Form
  patch "/places/:id", to: "places#update", as: "update_place" # update place in db
  delete "/places/:id", to: "places#destroy", as: "delete_place"

  # Routes for Comments
  get "/comments", to: "comments#new", as: "new_comment" # New Comment form
  post "/comments", to: "comments#create" # Post to db
  get "/comments/:id", to: "comments#show", as: "comment" # shows a comment
  get "/comments/:id", to: "comments#edit", as: "edit_comment" # edit comment
  patch "/comments/:id", to: "comments#update", as:"update_comment" #patch comment in db
  delete "/comments/:id", to: "comment#destroy", as: "delete_comment"

end
