require 'spec_helper'

describe Spree::StaticContentController, type: :controller do
  let!(:store) { create(:store, default: true) }

  context '#show' do
    it 'accepts path as root' do
      page = create(:page, slug: '/', stores: [store])
      request.path = page.slug
      get :show, params: { path: page.slug }
      expect(response).to be_successful
    end

    it 'accepts path as string' do
      page = create(:page, slug: 'hello', stores: [store])
      request.path = page.slug
      get :show, params: { path: page.slug }
      expect(response).to be_successful
    end

    it 'accepts path as nested' do
      page = create(:page, slug: 'aa/bb/cc', stores: [store])
      request.path = page.slug
      get :show, params: { path: page.slug }
      expect(response).to be_successful
    end

    it 'respond with a 404 when no page exists' do
      expect {
        get :show
      }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
