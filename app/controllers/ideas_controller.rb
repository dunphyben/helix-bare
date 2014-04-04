class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
    render('ideas/index.html.erb')
  end

  def new
    @idea = Idea.new
    render('ideas/new.html.erb')
  end

  def create
    @idea = Idea.new(params[:idea])
    if @idea.save
      #flash
      redirect_to("/ideas/#{@idea.slug}")
    else
      render('ideas/new.html.erb')
    end
  end

  def show
    @idea = Idea.find_by_slug(params[:slug])
    render('ideas/show.html.erb')
  end

  def edit
    @idea = Idea.find_by_slug(params[:slug])
    render('ideas/edit.html.erb')
  end

  def update
    @idea = Idea.find_by_slug(params[:slug])
    if @idea.update(params[:idea])
      redirect_to("/ideas/#{@idea.slug}")
    else
      render("ideas/edit.html.erb")
    end
  end

  def delete
    @idea = Idea.find_by_slug(params[:slug])
    @idea.destroy
    redirect_to('/ideas')
  end

end
