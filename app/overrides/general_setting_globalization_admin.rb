Deface::Override.new(:virtual_path  => "spree/admin/general_settings/edit",
                     :name => "general_setting_locales_edit",
                     :insert_bottom => "fieldset#preferences",
                     :partial => "spree/admin/general_settings/edit_locales")

Deface::Override.new(:virtual_path  => "spree/admin/general_settings/show",
                     :name => "general_setting_locales_show",
                     :insert_bottom => "[data-hook='preferences']",
                     :partial => "spree/admin/general_settings/show_locales")