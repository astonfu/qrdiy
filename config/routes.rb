Rails.application.routes.draw do
  root to: "home#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :relations, only: [:create, :destroy]

  resources :projects, path: :diy do
    member do
      post :create_reply
    end

    collection do
      get "change_reply_type/:type", action: "change_reply_type", as: "change_reply_type"
    end
  end

  scope :i do
    resources :users, path: '', only: [:show], param: :domain do

    end
  end

  resources :user_profiles, path: :i, param: :domain

  resources :publications, except: [:show, :index, :edit, :update] do
    collection do
      post "trix_attachment"
    end
    member do
      get '(/:index)', to: "publications#show", as: ""
    end
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  resources :notifications do
    collection do
      post :clean
    end
  end
  mount RuCaptcha::Engine => "/rucaptcha"

  resources :comments, only: [:destroy]
  resources :statuses, only: [:index, :destroy] do
    resources :comments, only: [:new, :create]
  end


  # 会匹配所有剩下的 url，并 render error，它之后的 route 不会匹配
  match '*path', to: 'home#error_404', via: :all

end
