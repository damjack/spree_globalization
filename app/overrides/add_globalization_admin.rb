Deface::Override.new(:virtual_path  => "spree/admin/taxonomies/_form",
                     :replace => "[data-hook='admin_inside_taxonomy_form']",
                     :partial => "spree/admin/shared/taxonomy_globalization_form",
                     :name    => "taxonomy_globalization_form")

Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
                     :replace => "[data-hook='admin_inside_taxon_form']",
                     :partial => "spree/admin/shared/taxon_globalization_form",
                     :name    => "taxon_globalization_form")

Deface::Override.new(:virtual_path => "spree/admin/properties/_form",
                     :name => "properties_globalization_form",
                     :replace => "[data-hook='admin_property_form']",
                     :partial => "spree/admin/shared/properties_globalization_form")

Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "product_globalization_form_meta",
                     :replace => "[data-hook='admin_product_form_meta']",
                     :partial => "spree/admin/shared/product_globalization_form_meta")

Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :replace => "[data-hook='admin_product_form_left']",
                     :partial => "spree/admin/shared/product_globalization_form_left",
                     :name    => "product_globalization_form_left")

Deface::Override.new(:virtual_path  => "spree/admin/general_settings/edit",
                     :name => "general_setting_locales_edit",
                     :insert_after => "[class='row']",
                     :partial => "spree/admin/general_settings/edit_locales")
