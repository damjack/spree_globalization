Spree::ProductProperty.class_eval do
  translates :value
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end