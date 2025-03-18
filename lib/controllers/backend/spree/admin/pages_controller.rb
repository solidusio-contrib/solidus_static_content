# frozen_string_literal: true

module Spree
  module Admin
    class PagesController < Spree::Admin::ResourceController
      private

      # Set some default attributes
      def build_resource
        super.tap do |resource|
          if resource.stores.blank?
            resource.stores << Spree::Store.default
          end
        end
      end

      def collection
        super.ordered_by_position
      end
    end
  end
end
