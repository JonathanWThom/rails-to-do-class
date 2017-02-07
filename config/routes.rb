Rails.application.routes.draw do
  resources :lists do
    resources :tasks do
      get '/complete', to: 'tasks#complete', via: [:patch]
    end
  end


end
