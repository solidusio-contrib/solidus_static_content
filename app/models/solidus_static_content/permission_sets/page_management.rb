# frozen_string_literal: true

module SolidusStaticContent
  module PermissionSets
    class PageManagement < Spree::PermissionSets::Base
      def activate!
        can :manage, Spree::Page
      end
    end
  end
end
