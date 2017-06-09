class AddIndexForPage < SolidusSupport::Migration[4.2]
  def self.up
    add_index(:spree_pages, :slug)
  end

  def self.down
    remove_index(:spree_pages, :slug)
  end
end

