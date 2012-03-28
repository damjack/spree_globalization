Spree::Prototype.class_eval do
  translates :name, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => Spree::Config[:locales].split(",").collect {|l| l.to_sym}, :attributes => [:name]
  
  extend ::Globalize::Migratable
end
