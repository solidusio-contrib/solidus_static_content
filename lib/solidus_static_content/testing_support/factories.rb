# frozen_string_literal: true

FactoryBot.define do
  factory :page, class: Spree::Page do
    sequence(:title) { |n| "Page #{n}" }
    body { 'This is the body of the page' }

    sequence(:slug) { |n| "/page#{n}" }

    trait :with_foreign_link do
      foreign_link do
        "http://example.com"
      end
    end

    stores { [build(:store)] }
  end
end
