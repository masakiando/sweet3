Rails.application.routes.draw do
  get 'welcome/index'
  namespace :admin do
    root 'top#index'
  end
  namespace :staff do
    root 'top#index'
  end
  namespace :worker do
    root 'top#index'
  end
end
