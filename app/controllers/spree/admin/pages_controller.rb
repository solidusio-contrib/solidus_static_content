class Spree::Admin::PagesController < Spree::Admin::ResourceController
  private

  def collection
    super.ordered_by_position
  end
end
