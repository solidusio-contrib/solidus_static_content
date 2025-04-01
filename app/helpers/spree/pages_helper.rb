# frozen_string_literal: true

module Spree
  module PagesHelper
    def render_snippet(slug)
      page = Spree::Page.find_by(slug: slug)
      raw page.body if page
    end
  end
end
