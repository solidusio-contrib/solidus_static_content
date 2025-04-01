# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :pages do
      collection do
        post :update_positions
      end
    end
  end

  # Check if the layout is not the default layout to avoid conflicts with the starter_frontend routes
  if Spree::Config.layout != 'layouts/storefront'
    constraints(SolidusStaticContent::RouteMatcher) do
      get '/(*path)', to: 'static_content#show', as: 'static'
    end
  end
end
