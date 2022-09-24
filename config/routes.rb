Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions: "admin/sessions"
}

  devise_for :customers, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

  root to: "homes#top"
  get 'homes/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
