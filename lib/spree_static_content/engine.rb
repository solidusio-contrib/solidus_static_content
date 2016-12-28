module SpreeStaticContent
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_static_content'

    def self.activate_menu_items
       Spree::Backend::Config.menu_items << Spree::Backend::Config.class::MenuItem.new(
        [:pages],
        'file-text',
        condition: -> { can?(:admin, Spree::Page) },
      )
    end

    def self.activate_overrides
      root.join("app/overrides").glob("*.rb").each do |path|
        require_dependency(path.to_s)
      end
    end

    config.to_prepare &method(:activate_menu_items)
    config.to_prepare &method(:activate_overrides)
  end
end
