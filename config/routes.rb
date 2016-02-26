Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  get 'messages/index'

  get 'messages/new'

  ActiveAdmin.routes(self)
  resources :vacationplans
  resources :roomplans
  resources :carevents
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update]
  # root 'welcome#index'

  get 'index' => 'welcome#index'
  get 'carevents/:id' => 'carevents#index'
  get 'roomplans/:id' => 'roomplans#index'
  get 'vacationplans/:id' => 'vacationplans#index'

  get 'doc' => 'doc/app#index'

  resources :messages do
    resources :comments
  end

  #root 'messages#index'
  #get 'welcome/index'


  # The priority is based upon order
  # of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller
  # actions automatically):
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
