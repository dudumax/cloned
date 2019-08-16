Rails.application.routes.draw do
  resources :tweeets do
      collection do
          post :confirm
      end
  end
  get 'home/index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "tweeets#index"
end

