Rails.application.routes.draw do

  root 'welcome#index'

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end

    resources :resumes
    end
  end

  devise_for :users
  
  resources :jobs do
    resources :resumes
    collection do
      get :search
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
