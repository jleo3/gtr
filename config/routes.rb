Gtr::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, :accounts, :credits, :debits

  mount JasmineRails::Engine => "/specs" if defined?(JasmineRails)
end
