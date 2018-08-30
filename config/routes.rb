Rails.application.routes.draw do
  resources :advertisements

  # #1
  resources :posts

  # #2

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'faq' => 'welcome#faq'

  root to: 'welcome#index'


end
