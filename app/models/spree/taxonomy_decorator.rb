Spree::Taxonomy.class_eval do
  translates :name, :fallbacks_for_empty_translations => true
  LANG = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  globalize_accessors :locales => LANG, :attributes => [:name]
  
  extend ::Globalize::Migratable
end
