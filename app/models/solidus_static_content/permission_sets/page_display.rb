# frozen_string_literal: true

module SolidusStaticContent
  module PermissionSets
    class PageDisplay < Spree::PermissionSets::Base
      class << self
        def privilege
          :display
        end

        def category
          :page
        end
      end

      def activate!
        can [:display, :admin], Spree::Page
      end
    end
  end
end
