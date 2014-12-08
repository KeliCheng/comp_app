CompApp::Application.routes.draw do
  get "blacklist_pages/blacklist"
  get "blacklist_pages/motherboard"
  get "blacklist_pages/cpu"
  get "blacklist_pages/ram"
  get "blacklist_pages/gpu"
  get "blacklist_pages/hd"
  get "blacklist_pages/power"
  get "blacklists/delete_mobo"
  get "blacklists/delete_cpu"
  get "blacklists/delete_ram"
  get "blacklists/delete_gpu"
  get "blacklists/delete_hd"
  get "blacklists/delete_power"
  post '/rate' => 'rater#create', :as => 'rate'
  get "computers/new"
  get "computers/current"
  get "computers/rename"
  get "computers/summary"
  get "computers/publish"
  resources :blacklists
  resources :users
  resources :computers
  get "similar_computers/menu"
  get "similar_computers/similar_price"
  get "similar_computers/similar_components"


  get "computers/delete_mobo"
  get "computers/delete_cpu"
  get "computers/delete_gpu"
  get "computers/delete_ram"
  get "computers/delete_hd"
  get "computers/delete_power"
  get "component_pages/cpu"
  get "component_pages/ram"
  get "component_pages/motherboard"
  get "build_by/price_option"
  get "build_by/select_price"
  post "build_by/select_price" => 'build_by#update'



  get "users/edit"
  get "users/new"
  get "users/index"
  get "component_pages/index"
  get "component_pages/gpu"
  get "component_pages/hd"
  get "component_pages/power"
  get "parts/add"
  get "parts/add_motherboard"
  post "parts/add_motherboard" => 'parts#create_motherboard'
  get "parts/add_cpu"
  post "parts/add_cpu" => 'parts#create_cpu'
  get "parts/add_gpu"
  post "parts/add_gpu" => 'parts#create_gpu'
  get "parts/add_ram"
  post "parts/add_ram" => 'parts#create_ram'
  get "parts/add_hd"
  post "parts/add_hd" => 'parts#create_hd'
  get "parts/add_power"
  post "parts/add_power" => 'parts#create_power'
  get "static_pages/home"
  get "static_pages/help"
  root "static_pages#home" #added this route to set the new home to static_pages#home
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
