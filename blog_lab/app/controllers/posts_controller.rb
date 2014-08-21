class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  	render :new
  end

  def create
  	new_post = params[:post].permit(:title, :author, :description)
  	Post.create(new_post)
  	redirect_to "/posts"

  end

  def show
  	id = params[:id]
  	@post = Post.find(id)
  end
end
