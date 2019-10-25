class Spree::Admin::PagesController < Spree::Admin::ResourceController
  private

  # Set some default attributes
  def build_resource
    super.tap do |resource|
      if resource.stores.blank?
        resource.stores << Spree::Store.default
      end
    end
  end
end
