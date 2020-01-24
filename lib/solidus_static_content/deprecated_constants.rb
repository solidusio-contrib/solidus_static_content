# require 'spree_static_content/engine'

SpreeStaticContent = SolidusStaticContent

module StaticPage
  def self.remove_spree_mount_point(path)
    Spree::Deprecation.warn(
      '#remove_spree_mount_point is deprecated with no replacement',
      caller(1),
    )

    regex = Regexp.new '\A' + Rails.application.routes.url_helpers.spree_path
    path.sub( regex, '').split('?')[0]
  end
end

# @deprecated Here for legacy purposes
Spree::StaticPage = SolidusStaticContent::RouteMatcher
Spree.deprecate_constant :StaticPage
