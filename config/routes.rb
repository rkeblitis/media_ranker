Rails.application.routes.draw do

  # Home Controller
  root  "home#index"

  # Memes Routes
  get   "/memes"            ,to: "memes#index"    ,as: :memes
  post  "/memes"            ,to: "memes#create"
  get   "/meme/:id"         ,to: "memes#show"     ,as: :meme
  patch "/meme/:id"         ,to: "memes#update"
  patch "/meme/:id/upvote"  ,to: "memes#upvote"   ,as: :upvote_meme
  get   "/memes/new"        ,to: "memes#new"      ,as: :new_meme
  get   "/meme/:id/edit"    ,to: "memes#edit"     ,as: :edit_meme
  patch "/meme/:id/edit"    ,to: "memes#destroy"



  # Words Routes
  get   "/words"            ,to: "words#index"    ,as: :words
  post  "/words"            ,to: "words#create"
  get   "/word/:id"         ,to: "words#show"     ,as: :word
  patch "/word/:id"         ,to: "words#update"
  patch "/word/:id/upvote"  ,to: "words#upvote"   ,as: :upvote_word
  get   "/words/new"        ,to: "words#new"      ,as: :new_word
  get   "/word/:id/edit"    ,to: "words#edit"     ,as: :edit_word
  patch "/word/:id/edit"    ,to: "words#destroy"

  # Albums Routes
  get   "/albums"            ,to: "albums#index"    ,as: :albums
  post  "/albums"            ,to: "albums#create"
  get   "/album/:id"         ,to: "albums#show"     ,as: :album
  patch "/album/:id"         ,to: "albums#update"
  patch "/album/:id/upvote"  ,to: "albums#upvote"   ,as: :upvote_album
  get   "/albums/new"        ,to: "albums#new"      ,as: :new_album
  get   "/album/:id/edit"    ,to: "albums#edit"     ,as: :edit_album
  patch "/album/:id/edit"    ,to: "albums#destroy"






  # Albums Controller
  # get "/albums" ,to: "albums#index" ,as: :albums
  # post "/albums" ,to:"albums#create"

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
