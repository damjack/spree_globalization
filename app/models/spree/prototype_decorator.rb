Spree::Prototype.class_eval do
  translates :name, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => LANG, :attributes => [:name]
  
end
