Rails.application.routes.draw do
  namespace :admin do
    resources :messages, only: [:new, :create]
    resources :big_genres, only: [:index, :create, :edit, :update]
    resources :small_genres, only: [:index, :create, :edit, :update]

  end

  namespace :public do
    resources :messages, only: [:show, :index]
  end

  devise_for :admins, controllers: {
  sessions: "admin/sessions",
  registrations: "admin/registrations"
}

  devise_for :customers, controllers: {
  registrations: "public/registrations",
  sessions: "public/sessions"
}

  root to: "homes#top"
  get 'homes/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
