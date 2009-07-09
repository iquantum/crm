ActionController::Routing::Routes.draw do |map|
  map.resources :contact_statuses
  map.resources :contacts
  
  # Restful Authentication Rewrites
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.activate '/activate/:activation_code', :controller => 'users', :action => 'activate', :activation_code => nil
  map.forgot_password '/forgot_password', :controller => 'passwords', :action => 'new'
  map.change_password '/change_password/:reset_code', :controller => 'passwords', :action => 'reset'
  map.open_id_complete '/opensession', :controller => "sessions", :action => "create", :requirements => { :method => :get }
  map.open_id_create '/opencreate', :controller => "users", :action => "create", :requirements => { :method => :get }
  
  # Restful Authentication Resources
  map.resources :users
  map.resources :passwords
  map.resource :session
  
  # Home Page
  map.root :contacts
  #map.root :controller => 'contacts'
  
  map.inbox '/inbox', :controller => 'inbox', :action => 'new'
  #map.contacts '/contacts', :controller => 'contacts', :action => 'new'
  map.companies '/companies', :controller => 'companies', :action => 'new'
  map.events '/events', :controller => 'events', :action => 'new'
  map.reporting '/reporting', :controller => 'reporting', :action => 'new'
  map.admin '/admin', :controller => 'admin', :action => 'new'
  
  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
