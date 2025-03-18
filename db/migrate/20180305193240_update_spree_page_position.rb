# frozen_string_literal: true

class UpdateSpreePagePosition < SolidusSupport::Migration[4.2]
  def up
    return unless column_exists?(:spree_pages, :position)

    change_column :spree_pages, :position, :integer, default: 0
  end

  def down
    return unless column_exists?(:spree_pages, :position)

    change_column :spree_pages, :position, :boolean, default: false
  end
end
