ActionController::Routing::Routes.draw do |map|
  map.resources :contacts
  map.resources :abouts
  map.resources :posts, :has_many  => :comments

  map.home '', :controller => 'posts', :action => 'index'
  map.logout 'logout', :controller => 'application', :action => 'logout'
  # map.login 'login', :controller =>   'session', :action => 'create'
  # map.logout 'logout', :controller  => 'session', :action => 'destroy'
  
  map.root :controller => "posts"


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
