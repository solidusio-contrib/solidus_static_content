class AddMetaFieldsToPages < SolidusSupport::Migration[4.2]
  def self.up
    add_column :spree_pages, :meta_keywords, :string
    add_column :spree_pages, :meta_description, :string
  end

  def self.down
  end
end
