Rails.application.routes.draw do
  get 'flats/index'
  get 'flats/show'
  get 'flats/new'
  get 'flats/create'
  get 'flats/destroy'
  get 'flats/update'
  root to: "list#index"
     resources :flats
end
