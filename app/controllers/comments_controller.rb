class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  # get "/comments", to: "comments#new", as: "new_comment"
  def new
      @comment = Comment.new
  end

  # post "/comments", to: "comments#create"
  def create
    comment_params = params.require(:comment).permit(:text)
  end
  # get "/comments/:id", to: "comments#show", as: "comment"
  # get "/comments/:id", to: "comments#edit", as: "edit_comment"
  # patch "/comments/:id", to: "comments#update", as:"update_comment"
  # delete "/comments/:id", to: "comment#destroy", as: "delete_comment"

end
