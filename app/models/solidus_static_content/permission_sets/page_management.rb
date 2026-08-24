# frozen_string_literal: true

module SolidusStaticContent
  module PermissionSets
    class PageManagement < Spree::PermissionSets::Base
      class << self
        def privilege
          :management
        end

        def category
          :page
        end
      end

      def activate!
        can :manage, Spree::Page
      end
    end
  end
end
