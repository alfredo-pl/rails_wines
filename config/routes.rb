Rails.application.routes.draw do
  resources :assemblies
  resources :wines
  resources :strains
  root 'strains#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
