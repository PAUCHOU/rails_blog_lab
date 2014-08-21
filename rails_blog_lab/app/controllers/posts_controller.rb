class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def create
		new_post = params[:post].permit(:title, :description, :author)
		Post.create(new_post)
		redirect_to "/posts"
	end

	

end