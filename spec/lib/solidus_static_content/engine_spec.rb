require 'spec_helper'

RSpec.describe SolidusStaticContent::Engine do
  describe '.activate_menu_item' do
    it 'adds the menu item only once' do
      described_class.activate_menu_items

      expect {
        described_class.activate_menu_items
        described_class.activate_menu_items
      }.not_to change(Spree::Backend::Config.menu_items, :size)
    end
  end
end
