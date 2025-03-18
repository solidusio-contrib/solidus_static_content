# frozen_string_literal: true

require 'spec_helper'

describe 'Static Content Page', js: true do
  let!(:store) { create(:store, default: true) }

  context 'render page' do
    it 'is a query string' do
      create(:page, slug: '/page', title: 'Query Test', stores: [store])
      visit '/page?test'
      expect(page).to have_text 'Query Test'
    end

    it 'can have slug not starting by /' do
      create(:page, slug: 'page2', title: 'No Slash Prefix Test', stores: [store])
      visit '/page2'
      expect(page).to have_text 'No Slash Prefix Test'
    end

    it 'can have slug with multiple /' do
      create(:page, slug: '/hello/shoppers/page3', title: 'Multiple Slash Test', stores: [store])
      visit '/hello/shoppers/page3'
      expect(page).to have_text 'Multiple Slash Test'
    end

    it 'can be a custom root page' do
      create(:page, slug: '/', title: 'Root Page Test', stores: [store])
      visit '/'
      expect(page).to have_text 'Root Page Test'
    end

    it 'is limited within its own constraints' do
      taxon = create(:taxon, permalink: 'test', name: 'The Taxon')
      create(:page, slug: "/t/#{taxon.permalink}", title: 'The Page', stores: [store])
      visit "/t/#{taxon.permalink}"
      expect(page).to have_content('The Taxon')
      expect(page).not_to have_content('The Page')
    end

    it 'fetch correct page' do
      create(:page, slug: '/', stores: [store])
      create(:page, slug: 'hello', title: 'Hello', stores: [store])
      create(:page, slug: 'somwhere', stores: [store])
      create(:page, :with_foreign_link, slug: 'whatever', stores: [store])
      visit '/hello'
      expect(page).to have_text 'Hello'
    end

    it 'do not effect the rendering of the rest of the site' do
      product = create(:product)
      visit spree.product_path(product)
      expect(page).to have_text product.name
    end
  end
end
