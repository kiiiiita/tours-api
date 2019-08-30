Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resource :users, only: [:show, :create, :update]
    end
  end
end
