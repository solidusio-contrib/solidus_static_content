module SpreeStaticContent
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_static_content'

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
      if SolidusSupport.solidus_gem_version >= Gem::Version.new("1.4.0")
        Spree::Backend::Config.configure do |config|
          config.menu_items << config.class::MenuItem.new(
            [:pages],
            'file-text',
            condition: -> { can?(:manage, Spree::Page) },
          )
        end
      else
        Deface::Override.new(
          virtual_path: "spree/admin/shared/_menu",
          name: "static_content_pages_admin_tab",
          insert_bottom: "[data-hook='admin_tabs']",
          partial: "spree/admin/shared/static_content_admin_tab"
        )
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
