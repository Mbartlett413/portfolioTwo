Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'page#index'
  post 'hello_email_connect', to: 'page#hello_email_connect'
  get 'privacyPolicy', to: 'page#privacyPolicy'
  get 'terms', to: 'page#terms'
end
