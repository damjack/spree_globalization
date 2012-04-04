Spree::Prototype.class_eval do
  LANG = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  
  translates :name, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => LANG, :attributes => [:name]
  
end
