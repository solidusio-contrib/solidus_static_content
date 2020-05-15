# frozen_string_literal: true

module SolidusStaticContent
  module PermissionSets
    class PageDisplay < Spree::PermissionSets::Base
      def activate!
        can [:display, :admin], Spree::Page
      end
    end
  end
end
