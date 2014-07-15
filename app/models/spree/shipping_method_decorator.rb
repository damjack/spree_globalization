Spree::ShippingMethod.class_eval do
  translates :name, :description
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end