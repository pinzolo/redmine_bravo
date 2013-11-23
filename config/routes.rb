# coding: utf-8
# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resource :bravos, only: [:create] do
    collection do
      get :users
    end
  end
end
