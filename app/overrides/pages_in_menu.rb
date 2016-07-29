Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "static_content_pages_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:pages, label: 'Pages', icon: 'file-text') %>",
                     :disabled => false)
