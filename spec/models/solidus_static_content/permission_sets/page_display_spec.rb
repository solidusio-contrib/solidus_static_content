# frozen_string_literal: true

require "spec_helper"
require "cancan/matchers"

describe SolidusStaticContent::PermissionSets::PageDisplay do
  let(:ability) { Class.new { include CanCan::Ability }.new }

  subject { ability }

  context "when activated" do
    before { described_class.new(ability).activate! }

    it { is_expected.to be_able_to(:display, Spree::Page) }
    it { is_expected.to be_able_to(:admin, Spree::Page) }

    it { is_expected.not_to be_able_to(:update, Spree::Page) }
    it { is_expected.not_to be_able_to(:create, Spree::Page) }
    it { is_expected.not_to be_able_to(:destroy, Spree::Page) }
  end

  context "when not activated" do
    it { is_expected.not_to be_able_to(:display, Spree::Page) }
    it { is_expected.not_to be_able_to(:admin, Spree::Page) }
  end

  describe ".privilege" do
    it "returns the correct privilege symbol" do
      expect(described_class.privilege).to eq(:display)
    end
  end

  describe ".category" do
    it "returns the correct category symbol" do
      expect(described_class.category).to eq(:page)
    end
  end
end
