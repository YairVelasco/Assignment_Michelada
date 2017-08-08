Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #marcas CRUD
  get '/marcas' => 'marcas#index'
  get '/marcas/:id' => 'marcas#show', as: :marca
  get '/marcas/new' => 'marcas#new'
  post '/marcas' => 'marcas#create'
  patch '/marcas/:id' => 'marcas#update'
  delete '/marcas/:id' => 'marcas#destroy'

  #productos CRUD

  get '/productos' => 'productos#index'
  get '/productos/new' => 'productos#new'
  post '/productos' => 'productos#create'
  patch '/productos/:id' => 'productos#update'
  get '/productos/:id/edit' => 'productos#edit', as: :edit_producto
  delete '/productos/:id' => 'productos#destroy', as: :producto
end
