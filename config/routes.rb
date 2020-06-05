# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :pages do
      collection do
        post :update_positions
      end
    end
  end

  constraints(SolidusStaticContent::RouteMatcher) do
    get '/(*path)', :to => 'static_content#show', :as => 'static'
  end
end
