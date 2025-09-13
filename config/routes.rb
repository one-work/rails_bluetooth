Rails.application.routes.draw do

  namespace 'bluetooth', defaults: { business: 'bluetooth' } do
    resources :devices do
      collection do
        get :test
        post :err
        post :scan
      end
    end
    namespace :admin, defaults: { namespace: 'admin' } do
      root 'home#index'
      resources :devices
    end
  end

end
