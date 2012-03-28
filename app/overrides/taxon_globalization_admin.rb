Deface::Override.new(:virtual_path  => "spree/admin/taxonomies/_form",
                     :replace => "[data-hook='admin_inside_taxonomy_form']",
                     :partial => "spree/admin/shared/taxonomy_globalization_form",
                     :name    => "taxonomy_globalization_form")

Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
                     :replace => "[data-hook='admin_inside_taxon_form']",
                     :partial => "spree/admin/shared/taxon_globalization_form",
                     :name    => "taxon_globalization_form")