Spree::OptionValue.class_eval do
  translates :name, :presentation, :fallbacks_for_empty_translations => true
  LANG = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  globalize_accessors :locales => LANG, :attributes => [:name, :presentation]
  
  extend ::Globalize::Migratable
end