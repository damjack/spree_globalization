Spree::Image.class_eval do
  translates :alt
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end