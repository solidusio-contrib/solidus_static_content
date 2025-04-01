# frozen_string_literal: true

require 'spec_helper'

RSpec.describe SolidusStaticContent::Engine do
  describe 'initializer' do
    it 'adds the pages menu item to the backend configuration' do
      expect(Spree::Backend::Config.menu_items.any? { |item| item.label.to_sym == :pages }).to be true
    end

    it 'sets the correct icon for the pages menu item' do
      menu_item = Spree::Backend::Config.menu_items.find { |item| item.label.to_sym == :pages }
      expect(menu_item.icon).to eq('file-text')
    end

    it 'sets the correct match_path for the pages menu item' do
      menu_item = Spree::Backend::Config.menu_items.find { |item| item.label.to_sym == :pages }
      expect(menu_item.match_path).to eq('/pages')
    end

    it 'ensures the pages menu item is added only once' do
      pages_menu_items = Spree::Backend::Config.menu_items.select { |item| item.label.to_sym == :pages }
      expect(pages_menu_items.size).to eq(1)
    end
  end
end
