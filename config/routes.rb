Rails.application.routes.draw do
  get 'users/les-vrais', to: 'users#les_vrais'

  resources :users do
    resources :bars, only: [:index, :show, :new, :create]
  end

  # Dorénavant nous n'avons plus besoin d'écrire chaque route du CRUD (plus bas) grâce à "resources"
  # get 'users', to: 'users#index'
  # get 'users/new', to: 'users#new'
  # get 'users/:id', to: 'users#show', as: :user
  # post 'users', to: 'users#create'
  # get 'users/:id/edit', to: 'users#edit'

  # patch 'users/:id', to: 'users#update'

  # delete 'users/:id', to: 'users#destroy'
end
