class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render('tags/index.html.erb')
  end


  def create
    @idea = Idea.find_by_slug(params[:slug])
    @tags = params[:tag]
    tags = @tags.downcase.split(', ')
    tags.each do |tag|
      @idea.tags << if Tag.find_by_name(tag) == nil then Tag.create(:name => tag) else Tag.find_by_name(tag) end
    end
    @tags = Tag.all
    render('ideas/show.html.erb')

  end
end
