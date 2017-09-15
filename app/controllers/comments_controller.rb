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
    comment_params = params.require(:comment).permit(:comment)
    user_id = session[:user_id]
    if user_id.nil?
      flash[:error] = "Please login to comment."
      redirect_to new_user_path
    elsif
      comment = Comment.new(comment_params)
      post.user_id = user_id
      user = User.find_by_id user_id
      if comment.save
        redirect_to user_path user.username
      end
    end
  end
  # get "/comments/:id", to: "comments#show", as: "comment"
  def show
    @comment = Comment.find_by_id(params[:comment_id])
  end
  # get "/comments/:id", to: "comments#edit", as: "edit_comment"
  def edit
    @comment = Comment.find_by_id(params[:comment_id])
    if @comment.user_id != session[:user_id]
      flash[:error] = "You are not authorized to edit this comment"
      redirect_to comment_path(params[:comment_id])
    end
  end
  # patch "/comments/:id", to: "comments#update", as:"update_comment"
  def update
    comment_params = params.require(:comment).permit(:comment)
    if comment.user_id != session[:user_id]
      flash[:error] = "You are not authorized to edit this comment"
      redirect_to edit_comment_path params[:comment_id]
    else
      comment.update_attributes(comment_params)
    end
    redirect_to comment_path comment_path
  end
  # delete "/comments/:id", to: "comment#destroy", as: "delete_comment"
  def destroy
    comment = Comment.find_by_id(params[:comment_id])
    if post.user_id != session[:user_id]
      flash[:error] = "You are not authorized to delete this comment"
    else
      user = User.find_by_id comment.user_id
      post.destroy
      redirect_to user_path(user.username)
    end
  end
end
