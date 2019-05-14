module StoreDecorator
  extend ActiveSupport::Concern

  included do
    has_many :store_pages, dependent: :destroy
    has_many :pages, through: :store_pages
  end
end

Spree::Store.include StoreDecorator
