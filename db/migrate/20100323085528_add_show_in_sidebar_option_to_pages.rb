class AddShowInSidebarOptionToPages < SolidusSupport::Migration[4.2]
  def self.up
    add_column :spree_pages, :show_in_sidebar, :boolean, :default=> false, :null=>false
  end

  def self.down
    remove_column :spree_pages, :show_in_sidebar
  end
end