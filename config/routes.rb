Rails.application.routes.draw do
  devise_for :users
  resources :annonces
  root to: 'annonces#index'
  get 'mes_annonces/:user_id' => 'annonces#mes_annonces', as: :mes_annonces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
