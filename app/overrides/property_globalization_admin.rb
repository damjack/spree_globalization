Deface::Override.new(:virtual_path => "spree/admin/properties/_form",
                     :name => "properties_globalization_form",
                     :replace => "[data-hook='admin_property_form']",
                     :partial => "spree/admin/shared/properties_globalization_form")