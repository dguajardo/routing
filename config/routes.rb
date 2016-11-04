Rails.application.routes.draw do
  get 'stops/index'

  get 'stops/import'

  resources :uploads
 
  get '/uploads' => 'uploads#index'
  get '/stops/index' => 'stops#index'

  root to: 'uploads#index'

    resources :uploads do
      collection { post :import }
    end
  
   resources :stops do
      collection { post :import }
    end
end
