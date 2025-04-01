# frozen_string_literal: true

require 'solidus_core'
require 'solidus_support'

module SolidusStaticContent
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions

    isolate_namespace ::Spree

    engine_name 'solidus_static_content'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer 'solidus_subscriptions.configure_backend' do
      next unless ::Spree::Backend::Config.respond_to?(:menu_items)

      ::Spree::Backend::Config.configure do |config|
        config.menu_items << config.class::MenuItem.new(
          [:pages],
          'file-text',
          url: :admin_pages_path,
          condition: -> { can?(:admin, Spree::Page) },
          match_path: '/pages'
        )
      end
    end
  end
end
