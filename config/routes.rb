Rails.application.routes.draw do
  get 'panel', to: "admin#index"
  resources :uruns
  namespace :on_taraf do
    get 'ana_sayfa/index'
    get 'iletisim/index'
    get 'urun_resimleri/index'
    get 'hizmetlerimiz/index'
  end
  
  
  devise_for :users
  root "on_taraf/ana_sayfa#index" #ana sayfa
end
