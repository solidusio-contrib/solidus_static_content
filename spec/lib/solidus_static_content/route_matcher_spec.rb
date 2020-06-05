require 'spec_helper'

describe SolidusStaticContent::RouteMatcher do
  subject { described_class }

  context '.matches?' do
    it 'is true when valid page' do
      page = create(:page, slug: 'hello', visible: true)
      request = instance_double(Rack::Request, path_info: page.slug)
      expect(subject.matches?(request)).to be true
    end

    it 'is false when using reserved slug name' do
      page = create(:page, slug: 'login', visible: true)
      request = instance_double(Rack::Request, path_info: page.slug)
      expect(subject.matches?(request)).to be false
    end

    it 'is false when page is not accessible' do
      page = create(:page, slug: 'hello', visible: false)
      request = instance_double(Rack::Request, path_info: page.slug)
      expect(subject.matches?(request)).to be false
    end
  end
end
