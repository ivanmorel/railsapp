Rails.application.routes.draw do
  get 'people/test', to: 'people#test'
  resources :people

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end