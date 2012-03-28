Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "product_globalization_form_meta",
                     :replace => "[data-hook='admin_product_form_meta']",
                     :partial => "spree/admin/shared/product_globalization_form_meta")

Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :replace => "[data-hook='admin_product_form_left']",
                     :partial => "spree/admin/shared/product_globalization_form_left",
                     :name    => "product_globalization_form_left")