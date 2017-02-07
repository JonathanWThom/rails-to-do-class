Rails.application.routes.draw do
  resources :lists do
    resources :tasks do
      collection do
        get :complete
      end
    end
  end


end
