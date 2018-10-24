Rails.application.routes.draw do
  resources :reports
  get 'welcome/index'
  root :to =>"welcome#index"
  resources :report_types
  resources :contamination_levels
  resources :consumers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
