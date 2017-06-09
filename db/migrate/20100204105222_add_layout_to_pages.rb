class AddLayoutToPages < SolidusSupport::Migration[4.2]
  def self.up
    add_column :spree_pages, :layout, :string
  end

  def self.down
    remove_column :spree_pages, :layout
  end
end