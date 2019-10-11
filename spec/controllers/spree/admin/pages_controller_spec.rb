require 'spec_helper'

RSpec.describe Spree::Admin::PagesController do
  describe '.build_resource' do
    it 'pre-assigns the default store' do
      default_store = create(:store, default: true)

      expect(subject.send(:build_resource).stores).to eq([default_store])
    end
  end
end
