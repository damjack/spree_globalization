Deface::Override.new(:virtual_path  => "spree/layouts/spree_application",
                     :name => "select_locales",
                     :insert_after => "div#site_search",
                     :partial => "spree/shared/select_locales")