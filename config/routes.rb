Rails.application.routes.draw do
  root "nouns#index"
  resources :nouns
end
