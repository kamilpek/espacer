Rails.application.routes.draw do
  devise_for :users
  resources :places

  resources :places do
    get 'show_admin'
  end

  scope "admin" do
    resources :users do
      member do
        delete 'destroy'
        get 'new'
        post 'create'
        get 'edit'
        patch 'update'
        post 'grantadmin'
        post 'resetpassword'
      end
    end
  end

  get 'pages/home'
  get 'pages/control'
  get 'pages/users'

  root 'pages#home'
end
