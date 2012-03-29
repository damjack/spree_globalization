Spree::Product.class_eval do
  translates :name, :permalink, :description, :meta_description, :meta_keywords, :google_merchant_brand, :google_merchant_product_category, :google_merchant_product_type, :fallbacks_for_empty_translations => true
  LANG = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  globalize_accessors :locales => LANG, :attributes => [:name, :permalink, :description, :meta_description, :meta_keywords, :google_merchant_brand, :google_merchant_product_category, :google_merchant_product_type]
  
  extend ::Globalize::Migratable
end