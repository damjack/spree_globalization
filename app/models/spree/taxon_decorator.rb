Spree::Taxon.class_eval do
  translates :name, :description, :permalink
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end