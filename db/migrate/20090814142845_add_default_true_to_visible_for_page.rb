class AddDefaultTrueToVisibleForPage < SolidusSupport::Migration[4.2]
  def self.up
    change_column :spree_pages, :visible, :boolean, :default=> true
  end

  def self.down
  end
end