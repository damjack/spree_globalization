Spree::Property.class_eval do
  translates :name, :presentation, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => LANG, :attributes => [:name, :presentation]
  
end
