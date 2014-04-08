class IdeasController < ApplicationController

  def index
    @published = Idea.published
    @unpublished = Idea.unpublished
    render('ideas/index.html.erb')
  end

  def new
    @idea = Idea.new
    render('ideas/new.html.erb')
  end

  def create
    @idea = Idea.new(user_params)

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
    if @idea.update(user_params)
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

private
  def user_params
    params.require(:idea).permit([:title,
                                 :summary,
                                 :content,
                                 :published])
end

end
