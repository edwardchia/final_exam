Rails.application.routes.draw do
  resources :auctions, only: [:new, :show, :index]

  get("/", to: "welcome#home", as: :root)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
