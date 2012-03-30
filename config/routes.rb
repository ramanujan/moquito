Moquito::Application.routes.draw do
 

  get "store/index"

  get "store/catalog"

  get "products/new"

  get "/home", to:"static_pages#home"

  get "/about",to:"static_pages#about"
  
  get '/heroku_reset', to:"static_pages#heroku_db_reset"
  
  get '/heroku_migrate', to:"static_pages#heroku_db_migrate"
  
  get '/store', to:"store#index"
  
  get '/store/products/:id', to:"store#show", as:"store_product"
  
  root :to => 'static_pages#home'
  
  namespace :admin do
    root to:"base#index"
    resources :products
  end
 
=begin  
 
  admin_root                /admin(.:format)                   admin/base#index
  admin_products     GET    /admin/products(.:format)          admin/products#index
                     POST   /admin/products(.:format)          admin/products#create
  new_admin_product  GET    /admin/products/new(.:format)      admin/products#new
  edit_admin_product GET    /admin/products/:id/edit(.:format) admin/products#edit
  admin_product      GET    /admin/products/:id(.:format)      admin/products#show
                     PUT    /admin/products/:id(.:format)      admin/products#update
                     DELETE /admin/products/:id(.:format)      admin/products#destroy
=end 

   resource :cart, only:[:show] do
    resources :line_items, only:[:create,:index]
  end   

=begin
   cart_line_items GET    /cart/line_items(.:format)         line_items#index
                   POST   /cart/line_items(.:format)         line_items#create
   cart            GET    /cart(.:format)                    carts#show 
=end


end
