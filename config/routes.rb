Rails.application.routes.draw do
  resources :lists do
    resources :tasks do
    end
  end
end
