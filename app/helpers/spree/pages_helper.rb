# frozen_string_literal: true

module Spree::PagesHelper
  def render_snippet(slug)
    page = Spree::Page.find_by(slug: slug)
    raw page.body if page
  end
end
