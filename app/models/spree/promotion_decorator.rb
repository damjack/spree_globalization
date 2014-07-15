# Defining this in parent class Spree::Activator was raising undefined method association_class for nil
Spree::Promotion.class_eval do
  translates :name, :description, :code, :path
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end