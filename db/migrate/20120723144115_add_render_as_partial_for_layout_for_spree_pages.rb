# frozen_string_literal: true

class AddRenderAsPartialForLayoutForSpreePages < SolidusSupport::Migration[4.2]
  def up
    return if column_exists? :spree_pages, :render_layout_as_partial

    add_column :spree_pages, :render_layout_as_partial, :boolean, default: false
  end

  def down
    return unless column_exists? :spree_pages, :render_layout_as_partial

    remove_column :spree_pages, :render_layout_as_partial
  end
end
