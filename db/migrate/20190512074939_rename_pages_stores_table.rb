class RenamePagesStoresTable < SolidusSupport::Migration[4.2]
  def change
    rename_table :spree_pages_stores, :spree_page_stores
  end
end
