Rails.application.routes.draw do
  namespace :on_taraf do
    get 'ana_sayfa/index'
  end
  
  
  devise_for :users
  root "on_taraf/ana_sayfa#index" #ana sayfa
end
