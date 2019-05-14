Rails.application.routes.draw do
  resources :faydalars
  get 'panel', to: "admin#index"
  namespace :on_taraf do
    get 'ana_sayfa/index'
    get 'gubre_hakkinda/index'
    get 'iletisim/index'
    get 'solucan/index'
    get 'faydalari/index'
  end
  
  
  devise_for :users
  root "on_taraf/ana_sayfa#index" #ana sayfa
end
