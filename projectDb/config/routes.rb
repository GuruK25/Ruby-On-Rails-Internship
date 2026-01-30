Rails.application.routes.draw do

  # 30/01/26
  # if Rails.env.development?
  #   mount LetterOpenerWeb::Engine,at:"/letter_opener"
  # end

  # 23/01/26 Commented these to make out_of_stock work
  # resources :products
  # resources :customers



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"


  #Custom routes creting (instructions are from slack by mam)

  # path(resource) to create a out_of_stock   path: ..../products/out_of_stock
  resources :products do
    collection do
      get 'out_of_stock'
    end
  end

  resources :customers do
    collection do
      get 'blacklisted_customers'
    end
  end
  
end

# Assignment by mam 27/01/26.
# resources :products, except: [:show]
# When i do this. I should get error. I am getting No method error. ()
