# frozen_string_literal: true

class StaticContentController < StoreController
  helper 'spree/products'
  layout :determine_layout

  def show
    @page = Spree::Page.by_store(current_store).visible.find_by!(slug: request.path_info)

    # Assign static_content to let solidus recognize it as the current
    # controller resource, this is used by meta tags and in other places.
    @static_content = @page
  end

  private

  def determine_layout
    return @page.layout if @page && @page.layout.present? && !@page.render_layout_as_partial?

    Spree::Config.layout
  end

  def accurate_title
    return unless @page

    @page.meta_title.presence || @page.title
  end
end
