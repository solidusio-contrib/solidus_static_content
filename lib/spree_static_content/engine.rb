module SpreeStaticContent
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_static_content'

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
       Spree::Backend::Config.menu_items << Spree::Backend::Config.class::MenuItem.new(
        [:pages],
        'file-text',
        condition: -> { can?(:admin, Spree::Page) },
      )
    end

    config.to_prepare &method(:activate).to_proc
  end
end
