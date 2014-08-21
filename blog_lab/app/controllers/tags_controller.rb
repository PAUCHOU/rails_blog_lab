class TagsController < ApplicationController
  def index
  	@tags = Tag.all
  end

  def show
  	id = param[:id]
  	@tag = Tag.find(id)

  end

  def create
  	new_tag = param[:tag].permit(:name)
  	Tag.create(new_tag)
  end

  def new
  end
end
