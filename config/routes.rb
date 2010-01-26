ActionController::Routing::Routes.draw do |map|

  map.resources :contacts
  map.resources :abouts
  map.resources :posts, :has_many  => :comments
  map.resources :cvs

  map.home '', :controller => 'posts', :action => 'index'
  map.logout 'logout', :controller => 'application', :action => 'logout'
  map.cv 'cv', :controller => 'cvs', :action => 'index'
  # map.login 'login', :controller =>   'session', :action => 'create'
  # map.logout 'logout', :controller  => 'session', :action => 'destroy'
  
  map.root :controller => "posts"


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
