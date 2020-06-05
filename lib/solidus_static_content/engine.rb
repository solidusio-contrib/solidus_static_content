# frozen_string_literal: true

require 'spree/core'
require 'solidus_static_content'

module SolidusStaticContent
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions

    isolate_namespace ::Spree

    engine_name 'solidus_static_content'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.menu_item
      @menu_item ||= Spree::Backend::Config.class::MenuItem.new(
        [:pages],
        'file-text',
        condition: -> { can?(:admin, Spree::Page) },
      )
    end

    def self.activate_menu_items
      return if Spree::Backend::Config.menu_items.include?(menu_item)

      Spree::Backend::Config.menu_items << menu_item
    end

    config.to_prepare(&method(:activate_menu_items))
  end
end
