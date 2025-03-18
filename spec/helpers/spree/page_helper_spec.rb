# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Spree::PagesHelper, type: :helper do
  describe '.render_snippet' do
    it 'return body when page exists' do
      page = create(:page)
      expect(render_snippet(page.slug)).to eq page.body
    end

    it 'return nil when no page exist' do
      expect(render_snippet('hello')).to be_nil
    end
  end
end
