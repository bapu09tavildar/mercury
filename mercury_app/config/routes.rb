Rails.application.routes.draw do
  mount Mercury::Engine => '/'
  scope '(:locale)' do
    resources :articals 
  end

  root to: 'articals#index'
end
