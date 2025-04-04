# frozen_string_literal: true

class AddPagesStores < SolidusSupport::Migration[4.2]
  def change
    create_table :spree_pages_stores, id: false do |t|
      t.integer :store_id
      t.integer :page_id
      t.timestamps
    end

    add_index :spree_pages_stores, :store_id
    add_index :spree_pages_stores, :page_id
  end
end
