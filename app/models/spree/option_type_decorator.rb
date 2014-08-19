Spree::OptionType.class_eval do
  translates :name, :presentation
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations

  accepts_nested_attributes_for :option_values, :allow_destroy => false
end