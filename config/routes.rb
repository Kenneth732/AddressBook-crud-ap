# Rails.application.routes.draw do
#   resources :tasks, only: [:index, :show, :create, :update, :destroy]

#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end


Rails.application.routes.draw do
  resources :tasks, only: [:index, :show, :create, :update, :destroy]
end
