ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'messages', :action => 'index'

  map.resources :greetings

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
