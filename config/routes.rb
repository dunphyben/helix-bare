Helix::Application.routes.draw do

  match('ideas', {:via => :get, :to => 'ideas#index'})
  match('ideas/new', {:via => :get, :to => 'ideas#new'})
  match('ideas/new', {:via => :post, :to => 'ideas#create'})
  match('ideas/:slug', {:via => :get, :to => 'ideas#show'})
  match('ideas/:slug/edit', {:via => :get, :to => 'ideas#edit'})
  match('ideas/:slug', {:via => [:patch, :put], :to => 'ideas#update'})
  match('ideas/:slug', {:via => :delete, :to => 'ideas#delete'})

end
