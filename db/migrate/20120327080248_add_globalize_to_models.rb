class AddGlobalizeToModels < ActiveRecord::Migration
  def up
    Spree::Product.create_translation_table!({:name => :string, :permalink => :string, :description => :text, :meta_description => :text, :meta_keywords => :text, :google_merchant_brand => :string, :google_merchant_product_category => :string, :google_merchant_product_type => :string}, {:migrate_data => true})
    Spree::Property.create_translation_table!({:name => :string}, {:migrate_data => true})
    Spree::Prototype.create_translation_table!({:name => :string}, {:migrate_data => true})
    Spree::Taxonomy.create_translation_table!({:name => :string}, {:migrate_data => true})
    Spree::Taxon.create_translation_table!({:name => :string, :description => :text, :permalink => :string}, {:migrate_data => true})
    Spree::OptionType.create_translation_table!({:name => :string, :presentation => :string}, {:migrate_data => true})
    Spree::OptionValue.create_translation_table!({:name => :string, :presentation => :string}, {:migrate_data => true})
    
    #Spree::Product.migrate_translated_fields
    #Spree::Property.migrate_translated_fields
    #Spree::Prototype.migrate_translated_fields
    #Spree::Taxonomy.migrate_translated_fields
    #Spree::Taxon.migrate_translated_fields
    #Spree::OptionType.migrate_translated_fields
    #Spree::OptionValue.migrate_translated_fields
  end
  
  def down
    Spree::Product.drop_translation_table!
    Spree::Property.drop_translation_table!
    Spree::Prototype.drop_translation_table!
    Spree::Taxonomy.drop_translation_table!
    Spree::Taxon.drop_translation_table!
    Spree::OptionType.drop_translation_table!
    Spree::OptionValue.drop_translation_table!
  end
end
