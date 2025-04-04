# frozen_string_literal: true

module SolidusStaticContent
  module RouteMatcher
    EXCLUDED_PATHS = %r{^/+(admin|account|cart|checkout|content|login|pg/|orders|products|s/|session|signup|shipments|states|t/|tax_categories|user)+}

    def self.matches?(request)
      path = request.path_info

      return false if EXCLUDED_PATHS.match? path

      Spree::Page.visible.where(slug: path).exists?
    end
  end
end
