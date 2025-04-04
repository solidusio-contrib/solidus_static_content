# frozen_string_literal: true

module SolidusStaticContent
  module PagesInFooter
    Deface::Override.new(virtual_path: "spree/shared/_footer",
      name: "pages_in_footer",
      insert_bottom: "#footer-right",
      partial: "spree/static_content/static_content_footer",
      disabled: false)
  end
end
