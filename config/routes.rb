CompApp::Application.routes.draw do

  resources :users
  resources :computers
  get "similar_computers/menu"
  get "similar_computers/similar_price"
  get "similar_computers/similar_components"

  get "computers/new"
  get "computers/current"
  get "computers/rename"
  get "computers/summary"
  get "computers/publish"
  get "computers/delete_mobo"
  get "computers/delete_cpu"
  get "computers/delete_gpu"
  get "computers/delete_ram"
  get "computers/delete_hd"
  get "computers/delete_power"
  get "component_pages/cpu"
  get "component_pages/ram"
  get "component_pages/motherboard"


  get "users/edit"
  get "users/new"
  get "users/index"
  get "component_pages/index"
  get "component_pages/gpu"
  get "component_pages/hd"
  get "component_pages/power"
  get "parts/add"
  get "parts/edit"
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
