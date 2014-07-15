Spree::OptionValue.class_eval do
  translates :name, :presentation
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end