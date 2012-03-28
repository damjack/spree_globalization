Spree::Taxon.class_eval do
  translates :name, :description, :permalink, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => Spree::Config[:locales].split(",").collect {|l| l.to_sym}, :attributes => [:name, :description, :permalink]
  
  extend ::Globalize::Migratable
end
