Helix::Application.routes.draw do

  match('ideas', {:via => :get, :to => 'ideas#index'})

end
