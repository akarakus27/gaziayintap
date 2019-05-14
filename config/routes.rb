Rails.application.routes.draw do
  get 'panel', to: "admin#index"
  namespace :on_taraf do
    get 'ana_sayfa/index'
  end
  
  
  devise_for :users
  root "on_taraf/ana_sayfa#index" #ana sayfa
end
