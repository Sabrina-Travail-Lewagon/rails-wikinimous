Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  # Liste tous les article
  get 'articles', to: 'articles#index'
  # Ajout d'un article
  get 'articles/new', to: 'articles#new'
  ## Récupération de la saisie
  post 'articles', to: 'articles#create'
  # Afficher un article
  get 'articles/:id', to: 'articles#show', as: :article
  # Modifier un article
  get 'articles/:id/edit', to: 'articles#edit', as: :article_edit
  ## Récupéré la saisie et MAJ données
  patch 'articles/:id', to: 'articles#update'
  # supprimer un article
  delete 'articles/:id', to: 'articles#destroy'
end
