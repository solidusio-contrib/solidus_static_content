# frozen_string_literal: true

module SolidusStaticContent
  module PagesInHeader
    Deface::Override.new(virtual_path: "spree/shared/_main_nav_bar",
      name: "pages_in_header",
      insert_bottom: "#main-nav-bar",
      partial: "spree/static_content/static_content_header",
      disabled: false)
  end
end
