module Spree
  class PageStore < Spree::Base
    belongs_to :page
    belongs_to :store
  end
end
