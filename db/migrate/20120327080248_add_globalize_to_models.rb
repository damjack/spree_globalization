class AddGlobalizeToModels < ActiveRecord::Migration
  def change
    Spree::Product.create_translation_table! :name => :string, :permalink => :string, :description => :text, :meta_description => :text, :meta_keywords => :text, :google_merchant_brand => :string, :google_merchant_product_category => :string, :google_merchant_product_type => :string
    Spree::Property.create_translation_table! :name => :string, :presentation => :string
    Spree::Prototype.create_translation_table! :name => :string
    Spree::Taxonomy.create_translation_table! :name => :string
    Spree::Taxon.create_translation_table! :name => :string, :description => :text, :permalink => :string
    Spree::OptionType.create_translation_table! :name => :string, :presentation => :string
    Spree::OptionValue.create_translation_table! :name => :string, :presentation => :string
    
    Spree::Product.migrate_translated_fields
    Spree::Property.migrate_translated_fields
    Spree::Prototype.migrate_translated_fields
    Spree::Taxonomy.migrate_translated_fields
    Spree::Taxon.migrate_translated_fields
    Spree::OptionType.migrate_translated_fields
    Spree::OptionValue.migrate_translated_fields
  end
end
