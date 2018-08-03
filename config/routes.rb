Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit]
  patch 'students/:id', to: 'students#update'
end
