# frozen_string_literal: true

class AddVisibleToPages < SolidusSupport::Migration[4.2]
  class Page < ApplicationRecord
  end

  def self.up
    add_column :spree_pages, :visible, :boolean
    if Page.table_exists?
      Page.update_all visible: true
    else
      Spree::Page.update_all visible: true
    end
  end

  def self.down
    remove_column :spree_pages, :visible
  end
end
