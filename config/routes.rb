Rails.application.routes.draw do
  get 'people/test', to: 'people#test'
  constraints(id: /\d+/) do
    resources :people do
      collection do
        get 'search'
      end
    end
  end
  match 'wtf/:id', to: 'people#index', constraints: { id: /[a-z]+/ }, via: :get
  resources :posts, module: 'admin'
end