Spree::OptionValue.class_eval do
  translates :name, :presentation, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => Spree::Config[:locales].split(",").collect {|l| l.to_sym}, :attributes => [:name, :presentation]
  
  extend ::Globalize::Migratable
end