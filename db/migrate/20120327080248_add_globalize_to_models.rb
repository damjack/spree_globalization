class AddGlobalizeToModels < ActiveRecord::Migration
  def up
    add_column  :spree_shipping_methods,  :description,  :text, :after => :name
    Spree::Product.create_translation_table! :name => :string, :permalink => :string, :description => :text, :meta_description => :text, :meta_keywords => :text, :google_merchant_brand => :string, :google_merchant_product_category => :string, :google_merchant_product_type => :string
    Spree::Taxonomy.create_translation_table!({:name => :string}, {:migrate_data => true})
    Spree::Taxon.create_translation_table!({:name => :string, :description => :text, :permalink => :string}, {:migrate_data => true})
    Spree::Product.transaction do
      Spree::Product.find_each do |product|
        product.update_attributes!(product.untranslated_attributes, :without_protection => true)
      end
    end

    Spree::OptionType.create_translation_table!({:name => :string, :presentation => :string}, {:migrate_data => true})
    add_column  :spree_orders,  :locale,  :string
    Spree::ShippingMethod.create_translation_table!({:name => :string, :description => :text}, { :migrate_data => true })
    Spree::ProductProperty.create_translation_table!({ :value => :string }, { :migrate_data => true })
    Spree::Image.create_translation_table!( { :alt => :string }, { :migrate_data => true } )
    Spree::Property.create_translation_table!({:name => :string, :presentation => :string}, {:migrate_data => true})
    Spree::Prototype.create_translation_table!({:name => :string}, {:migrate_data => true})
    Spree::OptionValue.create_translation_table!({:name => :string, :presentation => :string}, {:migrate_data => true})
    Spree::Promotion.create_translation_table!( { :name => :string, :description => :string, :code => :string, :path => :string }, { :migrate_data => true } )
  end
  
  def down
    Spree::Product.drop_translation_table!
    Spree::Property.drop_translation_table!
    Spree::Prototype.drop_translation_table!
    Spree::Taxonomy.drop_translation_table!
    Spree::Taxon.drop_translation_table!
    Spree::OptionType.drop_translation_table!
    Spree::OptionValue.drop_translation_table!
    Spree::ShippingMethod.drop_translation_table!
    Spree::ProductProperty.drop_translation_table!
    Spree::Image.drop_translation_table!
    Spree::Promotion.drop_translation_table!
    remove_column  :spree_orders,  :locale
    remove_column  :spree_shipping_methods,  :description
  end
end
