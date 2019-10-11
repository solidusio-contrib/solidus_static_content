require 'spec_helper'

describe Spree::Page do
  let!(:page) { create(:page) }

  context 'factory' do
    it 'is valid' do
      expect(page).to be_valid
    end
  end

  context '.link' do
    it 'return slug if foreign_link blank' do
      page = create(:page, slug: 'hello')
      expect(page.link).to eq page.slug
    end

    it 'return foreign_link if set' do
      page = create(:page, :with_foreign_link, slug: 'hello')
      expect(page.link).to eq page.foreign_link
    end
  end

  context "pages in stores" do
    before(:each) do
      @store = create(:store)
      @page = create(:page, :stores => [@store])
      @page2 = create(:page)
    end

    it 'should correctly find pages by store' do
      pages_by_store = Spree::Page.by_store(@store)
      expect(pages_by_store).to include(@page)
      expect(pages_by_store).to_not include(@page2)
    end
  end

  describe '#slug' do
    it 'always adds a "/" (slash) prefix to the slug' do
      page = create(:page, slug: 'hello')
      expect(page.slug).to eq '/hello'
    end

    context 'when a title is present' do
      it 'is generated from the title' do
        page = create(:page, slug: nil, title: 'Hello World!')

        expect(page).to be_valid
        expect(page.slug).to eq('/hello-world')
      end
    end
  end

  describe '.meta_title' do
    it 'falls back to title' do
      page = build(:page, title: "Foo Bar", meta_title: nil)

      expect(page.meta_title).to eq("Foo Bar")
    end
  end
end
