Rails.application.routes.draw do
  resources :chat, path: '/', only: [:index, :create] 
end
